{
  lib,
  sources,
  buildGoModule,
}:
buildGoModule {
  inherit (sources.pterodactyl-wings) pname version src;
  vendorSha256 = "sha256-3jJQQEb2N28dhXJg5knzZgfnwXUOqnouRvedpTY23jw=";

  meta = with lib; {
    description = "The server control plane for Pterodactyl Panel.";
    homepage = "https://pterodactyl.io";
    license = licenses.mit;
  };
}
