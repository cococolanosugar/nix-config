{
  config,
  lib,
  pkgs,
  ...  
}: {
  imports = [
    ./mihomo.nix
    ./task.nix
    ./yq.nix
    ./fzf.nix
    ./bat.nix
    ./ripgrep.nix
    ./fd.nix
    ./delta.nix
    ./jq.nix
  ];
}