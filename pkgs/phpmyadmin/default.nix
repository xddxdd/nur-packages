{ lib
, stdenv
, sources
, ...
} @ args:

let
  configFile = ./config.inc.php;
in
stdenv.mkDerivation rec {
  inherit (sources.phpmyadmin) pname version src;

  phases = [ "unpackPhase" "installPhase" ];
  installPhase = ''
    mkdir $out
    tar xf $src --directory=$out --strip=1
    rm -rf $out/config.sample.inc.php $out/examples $out/setup $out/sql
    cp ${configFile} $out/config.inc.php
  '';
}
