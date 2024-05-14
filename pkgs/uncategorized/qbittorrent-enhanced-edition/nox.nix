{ sources, qbittorrent-nox, ... }:
qbittorrent-nox.overrideAttrs (_old: {
  inherit (sources.qbittorrent-enhanced-edition) pname version src;
})
