{
  buildGoModule,
  lib,
  sources,
  versionCheckHook,
}:
buildGoModule rec {
  inherit (sources.baidupcs-go) pname version src;
  vendorHash = "sha256-hW+IrzS5+DublQUIIcecL08xoauTjba9qnAtpzNeDXw=";
  doCheck = false;

  ldflags = [
    "-s"
    "-w"
    "-X main.Version=${version}"
  ];

  nativeInstallCheckInputs = [
    versionCheckHook
  ];
  doInstallCheck = true;
  versionCheckProgram = "${placeholder "out"}/bin/${meta.mainProgram}";

  postInstall = ''
    rm -f $out/bin/AndroidNDKBuild
  '';

  postVersionCheck = ''
    rm -f $out/bin/pcs_config.json
  '';

  meta = {
    mainProgram = "BaiduPCS-Go";
    maintainers = with lib.maintainers; [ xddxdd ];
    description = "Baidu Netdisk commandline client, mimicking Linux shell file handling commands";
    homepage = "https://github.com/qjfoidnh/BaiduPCS-Go";
    license = lib.licenses.asl20;
  };
}
