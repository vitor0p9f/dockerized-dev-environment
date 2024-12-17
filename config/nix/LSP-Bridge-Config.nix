{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = [
    pkgs.python3
    (pkgs.python3.withPackages (ps: with ps; [
      epc
      orjson
      sexpdata
      six
      setuptools
      paramiko
      rapidfuzz
      watchdog
    ]))
  ];

  shellHook = ''
    export TMPDIR=$HOME/tmp
  '';
}
