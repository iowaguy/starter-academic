{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = [
    pkgs.hugo
    pkgs.go

    # keep this line if you use bash
    pkgs.bashInteractive
  ];
}
