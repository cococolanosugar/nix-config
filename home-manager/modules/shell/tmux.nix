{
  config,
  lib,
  pkgs,
  ...  
}: let
  oh-my-tmux = pkgs.fetchFromGitHub {
    owner = "gpakosz";
    repo = ".tmux";
    rev = "e25f45ed3df5a83339fcfd99d256b0d1958d6466";
    sha256 = "sha256-X+5iFLsI/MUxO6Axx8RWZlsuVVAl5K8BTkqlUlHmj68=";
  };
in {
  programs.tmux = {
    enable = true;
  };

  # Create Oh My Tmux configuration file link
  home.file = {
    ".tmux.conf".source = "${oh-my-tmux}/.tmux.conf";
    ".tmux.conf.local".source = "${oh-my-tmux}/.tmux.conf.local";
  };
}