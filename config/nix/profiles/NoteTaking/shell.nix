{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = [
    pkgs.texlive.combined.scheme-full
    pkgs.texlivePackages.dvipng
    pkgs.emacs30-gtk3
  ];
  
  shellHook = ''
    export XDG_CONFIG_HOME=~/.config/nix/profiles/NoteTaking/config
  
    export SHELL=$(which fish)
    exec $SHELL
  '';
}
