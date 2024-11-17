{ pkgs ? import <nixpkgs> {} }:
pkgs.mkShell {
  buildInputs = [
  ];

  shellHook = ''
    export TMPDIR=$HOME/tmp
  '';
}
