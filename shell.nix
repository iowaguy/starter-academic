{ pkgs ? import <nixpkgs> {} }:

let
  academic = pkgs.python38.pkgs.buildPythonPackage rec {
    pname = "academic";
    version = "master";
    src = pkgs.fetchFromGitHub {
          owner = "iowaguy";
          repo = "hugo-academic-cli";
          rev = "294dffdd5c126f3dfd0a0aa4a45314c98b3db0f8";
          #sha256 = "0000000000000000000000000000000000000000000000000000";
          sha256 = "1vf344528ph6547ad3sg7a0kvzdgk4xchhy0wxhs3avjksjkk1kw";
        };
    # src = pkgs.fetchurl {
    #   sha256 = "0h3kym6xpg36d0qgb29823r2999710zranhrv10cccvbjrv6pf6g";
    #   url = "https://github.com/wowchemy/hugo-academic-cli/archive/refs/tags/0.7.0.tar.gz";
    # };

    doCheck = false;

    meta = {
      homepage = "https://github.com/wowchemy/hugo-academic-cli";
      description = "Load publications to website.";
    };

    propagatedBuildInputs = [
      pkgs.python38Packages.toml
      pkgs.python38Packages.requests
      pkgs.python38Packages.ruamel-yaml
      pkgs.python38Packages.bibtexparser
    ];
  };

  pythonPackages = ps:
    with ps; [
      academic
    ];
in
pkgs.mkShell {
  buildInputs = [
    pkgs.hugo
    pkgs.go

    # keep this line if you use bash
    pkgs.bashInteractive

    (pkgs.python38.withPackages pythonPackages)
  ];
}
