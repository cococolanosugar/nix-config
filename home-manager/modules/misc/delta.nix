{
  config,
  lib,
  pkgs,
  ...  
}: {
  # git-delta - Enhanced git diff viewer tool
  home.packages = with pkgs; [
    delta
  ];

  # Basic configuration
  programs.git.delta = {
    enable = true;
    options = {
      # Enable syntax highlighting
      syntax-theme = "Dracula";
      # Show line numbers
      line-numbers = true;
      # Show file modification statistics
      file-modified-label = "Modified:";
      # Use Unicode characters to beautify output
      decorations = true;
    };
  };
}