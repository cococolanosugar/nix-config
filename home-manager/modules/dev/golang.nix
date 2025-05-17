{
  config,
  lib,
  pkgs,
  ...
}: {
  # Go development related tools configuration
  home.packages = with pkgs; [
    # Specify Go version
    go_1_22

    # Go development tools
    delve      # Go language debugger
    gopls      # Go language server
    go-tools   # Go tools collection
  ];
}