{
  config,
  lib,
  pkgs,
  ...  
}: {
  programs.helix = {
    enable = true;
    # Enable basic configuration
    settings = {
      theme = "base16";
      editor = {
        line-number = "relative";
        mouse = true;
        cursor-shape = {
          insert = "bar";
          normal = "block";
          select = "underline";
        };
      };
    };
  };

  home.packages = with pkgs; [
    helix
  ];
}