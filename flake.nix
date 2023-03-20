{
  description = "My personal NUR repository";
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    flake-utils.url = "github:numtide/flake-utils";
    flake-utils-plus = {
      url = "github:gytis-ivaskevicius/flake-utils-plus";
      inputs.flake-utils.follows = "flake-utils";
    };
  };
  outputs = {
    self,
    nixpkgs,
    flake-utils,
    flake-utils-plus,
    ...
  } @ inputs: let
    lib = nixpkgs.lib;
  in
    flake-utils-plus.lib.mkFlake {
      inherit self inputs;
      channels.nixpkgs = {
        config = {
          allowUnfree = true;
          # contentAddressedByDefault = true;
        };
        input = inputs.nixpkgs;
      };

      outputsBuilder = channels: let
        pkgs = channels.nixpkgs;
      in {
        packages = import ./pkgs {
          inherit inputs pkgs;
          ci = false;
        };

        formatter = pkgs.alejandra;

        apps =
          lib.mapAttrs
          (n: v:
            flake-utils.lib.mkApp {
              drv = pkgs.writeShellScriptBin "script" v;
            })
          rec {
            ci = ''
              if [ "$1" == "" ]; then
                echo "Usage: ci <system>";
                exit 1;
              fi

              # Workaround https://github.com/NixOS/nix/issues/6572
              for i in {1..3}; do
                ${pkgs.nix-build-uncached}/bin/nix-build-uncached ci.nix -A $1 --show-trace && exit 0
              done

              exit 1
            '';

            nvfetcher = ''
              [ -f "$HOME/Secrets/nvfetcher.toml" ] && KEY_FLAG="-k $HOME/Secrets/nvfetcher.toml" || KEY_FLAG=""
              ${pkgs.nvfetcher}/bin/nvfetcher $KEY_FLAG -c nvfetcher.toml -o _sources "$@"
            '';

            readme = ''
              nix build .#_meta.readme
              cat result > README.md
            '';

            update = ''
              nix flake update
              ${nvfetcher}
              ${pkgs.python3}/bin/python3 pkgs/asterisk-digium-codecs/update.py
              ${pkgs.python3}/bin/python3 pkgs/openj9-ibm-semeru/update.py
              ${pkgs.python3}/bin/python3 pkgs/openjdk-adoptium/update.py
              ${readme}
            '';
          };
      };

      overlay = self.overlays.default;
      overlays = {
        default = final: prev:
          import ./pkgs {
            pkgs = prev;
            inherit inputs;
          };
        custom = nvidia_x11: final: prev:
          import ./pkgs {
            pkgs = prev;
            inherit inputs nvidia_x11;
          };
      };

      nixosModules = {
        setupOverlay = {config, ...}: {
          nixpkgs.overlays = [
            (self.overlays.custom
              config.boot.kernelPackages.nvidia_x11)
          ];
        };
        qemu-user-static-binfmt = import ./modules/qemu-user-static-binfmt.nix {
          inherit (self) overlays packages;
          inherit lib;
        };
      };
    };
}
