{
  config,
  lib,
  pkgs,
  ...  
}: {
  programs.zsh = {
    enable = true;
    autosuggestion.enable = true;
    enableCompletion = true;
    
    oh-my-zsh = {
      enable = true;
      plugins = [
        "git"
        "docker"
        "docker-compose"
        "sudo"
        "history"
        "z"
      ];
      theme = "robbyrussell";
    };

    initContent = ''
      # Configure history settings
      HISTFILE=~/.zsh_history
      HISTSIZE=10000
      SAVEHIST=10000
      
      # Configure basic options
      setopt HIST_IGNORE_DUPS
      setopt HIST_IGNORE_SPACE
      setopt HIST_VERIFY
      setopt EXTENDED_HISTORY
      setopt SHARE_HISTORY
    '';
  };

  home.packages = with pkgs; [
    zsh
  ];
}