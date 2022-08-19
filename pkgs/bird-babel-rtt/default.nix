{ lib
, sources
, bird
, autoreconfHook
, bison
, flex
, ...
} @ args:

bird.overrideAttrs (old: {
  inherit (sources.bird-babel-rtt) pname version src;
  nativeBuildInputs = [ autoreconfHook bison flex ];
})
