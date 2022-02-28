{ lib
, stdenv
, sources
, buildPackages
, perl
, python3
, coreutils
, liboqs
, withCryptodev ? false
, cryptodev
, static ? stdenv.hostPlatform.isStatic
  # Used to avoid cross compiling perl, for example, in darwin bootstrap tools.
  # This will cause c_rehash to refer to perl via the environment, but otherwise
  # will produce a perfectly functional openssl binary and library.
, withPerl ? stdenv.hostPlatform == stdenv.buildPlatform
, ...
} @ args:

with lib;
stdenv.mkDerivation rec {
  inherit (sources.openssl-oqs) pname src;

  # Version from nvfetcher cannot be properly parsed
  version = "1.1.1";

  postPatch = ''
    patchShebangs Configure
  '' + optionalString (versionOlder version "1.1.0") ''
    patchShebangs test/*
    for a in test/t* ; do
      substituteInPlace "$a" \
        --replace /bin/rm rm
    done
  ''
  # config is a configure script which is not installed.
  + optionalString (versionAtLeast version "1.1.1") ''
    substituteInPlace config --replace '/usr/bin/env' '${buildPackages.coreutils}/bin/env'
  '' + optionalString (versionAtLeast version "1.1.0" && stdenv.hostPlatform.isMusl) ''
    substituteInPlace crypto/async/arch/async_posix.h \
      --replace '!defined(__ANDROID__) && !defined(__OpenBSD__)' \
                '!defined(__ANDROID__) && !defined(__OpenBSD__) && 0'
  '';

  outputs = [ "bin" "dev" "out" "man" ];
  setOutputFlags = false;
  separateDebugInfo =
    !stdenv.hostPlatform.isDarwin &&
    !(stdenv.hostPlatform.useLLVM or false) &&
    stdenv.cc.isGNU;

  nativeBuildInputs = [
    perl
    (python3.withPackages (p: with p; [ jinja2 pyyaml tabulate ]))
  ];
  buildInputs = lib.optional withCryptodev cryptodev
    # perl is included to allow the interpreter path fixup hook to set the
    # correct interpreter in c_rehash.
    ++ lib.optional withPerl perl;

  preBuild = ''
    ln -s ${liboqs} oqs
    sed -i "s/enable: false/enable: true/g" oqs-template/generate.yml
    LIBOQS_DOCS_DIR=${sources.liboqs.src}/docs python oqs-template/generate.py
    make generate_crypto_objects
  '';

  # TODO(@Ericson2314): Improve with mass rebuild
  configurePlatforms = [ ];
  configureScript = {
    armv5tel-linux = "./Configure linux-armv4 -march=armv5te";
    armv6l-linux = "./Configure linux-armv4 -march=armv6";
    armv7l-linux = "./Configure linux-armv4 -march=armv7-a";
    x86_64-darwin = "./Configure darwin64-x86_64-cc";
    aarch64-darwin = "./Configure darwin64-arm64-cc";
    x86_64-linux = "./Configure linux-x86_64";
    x86_64-solaris = "./Configure solaris64-x86_64-gcc";
    riscv64-linux = "./Configure linux64-riscv64";
  }.${stdenv.hostPlatform.system} or (
    if stdenv.hostPlatform == stdenv.buildPlatform
    then "./config"
    else if stdenv.hostPlatform.isBSD && stdenv.hostPlatform.isx86_64
    then "./Configure BSD-x86_64"
    else if stdenv.hostPlatform.isBSD && stdenv.hostPlatform.isx86_32
    then "./Configure BSD-x86" + lib.optionalString (stdenv.hostPlatform.parsed.kernel.execFormat.name == "elf") "-elf"
    else if stdenv.hostPlatform.isBSD
    then "./Configure BSD-generic${toString stdenv.hostPlatform.parsed.cpu.bits}"
    else if stdenv.hostPlatform.isMinGW
    then "./Configure mingw${optionalString
                                     (stdenv.hostPlatform.parsed.cpu.bits != 32)
                                     (toString stdenv.hostPlatform.parsed.cpu.bits)}"
    else if stdenv.hostPlatform.isLinux
    then "./Configure linux-generic${toString stdenv.hostPlatform.parsed.cpu.bits}"
    else if stdenv.hostPlatform.isiOS
    then "./Configure ios${toString stdenv.hostPlatform.parsed.cpu.bits}-cross"
    else
      throw "Not sure what configuration to use for ${stdenv.hostPlatform.config}"
  );

  # OpenSSL doesn't like the `--enable-static` / `--disable-shared` flags.
  dontAddStaticConfigureFlags = true;
  configureFlags = [
    "shared" # "shared" builds both shared and static libraries
    "--libdir=lib"
    "--openssldir=etc/ssl"
  ] ++ lib.optional (versionAtLeast version "1.1.0" && stdenv.hostPlatform.isAarch64) "no-afalgeng"
  # OpenSSL needs a specific `no-shared` configure flag.
  # See https://wiki.openssl.org/index.php/Compilation_and_Installation#Configure_Options
  # for a comprehensive list of configuration options.
  ++ lib.optional (versionAtLeast version "1.1.0" && static) "no-shared";

  makeFlags = [
    "MANDIR=$(man)/share/man"
    # This avoids conflicts between man pages of openssl subcommands (for
    # example 'ts' and 'err') man pages and their equivalent top-level
    # command in other packages (respectively man-pages and moreutils).
    # This is done in ubuntu and archlinux, and possiibly many other distros.
    "MANSUFFIX=ssl"
  ];

  enableParallelBuilding = true;

  postInstall =
    lib.optionalString (!static) ''
      # If we're building dynamic libraries, then don't install static
      # libraries.
      if [ -n "$(echo $out/lib/*.so $out/lib/*.dylib $out/lib/*.dll)" ]; then
          rm "$out/lib/"*.a
      fi
    '' + lib.optionalString (!stdenv.hostPlatform.isWindows)
      # Fix bin/c_rehash's perl interpreter line
      #
      # - openssl 1_0_2: embeds a reference to buildPackages.perl
      # - openssl 1_1:   emits "#!/usr/bin/env perl"
      #
      # In the case of openssl_1_0_2, reset the invalid reference and let the
      # interpreter hook take care of it.
      #
      # In both cases, if withPerl = false, the intepreter line is expected be
      # "#!/usr/bin/env perl"
      ''
        substituteInPlace $out/bin/c_rehash --replace ${buildPackages.perl}/bin/perl "/usr/bin/env perl"
      '' + ''
      mkdir -p $bin
      mv $out/bin $bin/bin
      mkdir $dev
      mv $out/include $dev/
      # remove dependency on Perl at runtime
      rm -r $out/etc/ssl/misc
      rmdir $out/etc/ssl/{certs,private}
    '';

  postFixup = lib.optionalString (!stdenv.hostPlatform.isWindows) ''
    # Check to make sure the main output doesn't depend on perl
    if grep -r '${buildPackages.perl}' $out; then
      echo "Found an erroneous dependency on perl ^^^" >&2
      exit 1
    fi
  '';

  meta = with lib; {
    homepage = "https://www.openssl.org/";
    description = "A cryptographic library that implements the SSL and TLS protocols";
    license = licenses.openssl;
    platforms = platforms.all;
  };
}
