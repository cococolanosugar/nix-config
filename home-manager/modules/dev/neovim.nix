{
  config,
  lib,
  pkgs,
  ...  
}: {
  programs.neovim = {
    enable = true;
    defaultEditor = true;
  };

  # Install LazyVim using the officially recommended git clone method
  home.file = {
    ".config/nvim" = {
      source = pkgs.fetchFromGitHub {
        owner = "LazyVim";
        repo = "starter";
        rev = "main";
        sha256 = "sha256-QrpnlDD4r1X4C8PqBhQ+S3ar5C+qDrU1Jm/lPqyMIFM=";
      };
      recursive = true;
    };
  };
}