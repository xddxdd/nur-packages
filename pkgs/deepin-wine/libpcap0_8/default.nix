{ libpcap, ... }:

libpcap.overrideAttrs (old: {
  patches = [ ./shared-lib.diff ];

  meta = old.meta // {
    description = "libpcap library with soname patch from Debian";
  };
})
