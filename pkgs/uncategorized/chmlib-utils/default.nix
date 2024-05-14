{ chmlib, ... }:
chmlib.overrideAttrs (_oldAttrs: {
  configureFlags = [ "--enable-examples=yes" ];
})
