{
  config,
  lib,
  pkgs,
  inputs,
  ...
}: {
  # Go development related tools configuration
  home.packages = with pkgs; [
    # Specify Go version
    go_1_24

    # Go development tools
    delve      # Go language debugger
    gopls      # Go language server
    go-tools   # Go tools collection

    #gf        # goframe cli tool
    inputs.gf.packages.${pkgs.system}.default
    #goctl     # go-zero cli tool
    inputs.goctl.packages.${pkgs.system}.default
  ];
}