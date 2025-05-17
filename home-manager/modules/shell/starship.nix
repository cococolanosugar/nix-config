{
  config,
  lib,
  pkgs,
  ...  
}: {
  programs.starship = {
    enable = true;
    enableZshIntegration = true;
    
    settings = {
      add_newline = true;
      
      character = {
        success_symbol = "[➜](bold green)";
        error_symbol = "[✗](bold red)";
      };

      directory = {
        truncation_length = 3;
        truncate_to_repo = true;
      };

      git_branch = {
        format = "[$symbol$branch]($style) ";
        symbol = "";
      };

      git_status = {
        format = "([$all_status$ahead_behind]($style) )";
        style = "bold red";
      };

      golang = {
        format = "[$symbol($version )]($style)";
        symbol = "🐹";
      };

      nodejs = {
        format = "[$symbol($version )]($style)";
        symbol = "⬢";
      };

      python = {
        format = "[$symbol($version )]($style)";
        symbol = "🐍";
      };

      rust = {
        format = "[$symbol($version )]($style)";
        symbol = "🦀";
      };
    };
  };

  home.packages = with pkgs; [
    starship
  ];
}