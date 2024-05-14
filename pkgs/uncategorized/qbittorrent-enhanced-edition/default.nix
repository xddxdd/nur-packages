{ sources, qbittorrent, ... }:
qbittorrent.overrideAttrs (_old: {
  inherit (sources.qbittorrent-enhanced-edition) pname version src;
})
