{
  config,
  lib,
  pkgs,
  ...  
}: let
  oh-my-tmux = pkgs.fetchFromGitHub {
    owner = "gpakosz";
    repo = ".tmux";
    rev = "master";
    sha256 = "sha256-2mdbOKCiwkr3FgjjyThezL+VVf5nm3+04idMETBLeao=";
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