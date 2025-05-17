{
  config,
  lib,
  pkgs,
  ...
}: {
  # go-task task runner configuration
  home.packages = with pkgs; [
    go-task  # High-performance task runner
  ];
}