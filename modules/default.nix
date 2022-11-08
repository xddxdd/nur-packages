{ overlays, ... }:

{
  useSystemNvidiaX11 = { config, ... }: {
    nixpkgs.overlays = [
      (overlays.useSystemNvidiaX11 config.boot.kernelPackages.nvidia_x11)
    ];
  };
}
