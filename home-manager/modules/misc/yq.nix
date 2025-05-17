{
  config,
  lib,
  pkgs,
  ...  
}: {
  # yq - YAML/JSON/XML processing tool
  home.packages = with pkgs; [
    yq  # Powerful YAML/JSON/XML processing command-line tool
  ];
}