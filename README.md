# Nix Configuration

This repository contains my personal NixOS and Home Manager configurations.

## Project Structure

- `home-manager/`: Home Manager configuration
  - `modules/`: Modular configuration files
    - `dev/`: Development tools configuration
    - `misc/`: Miscellaneous tools configuration
    - `shell/`: Shell configuration
- `nixos/`: NixOS system configuration
  - `modules/`: System modules

## Usage

### Home Manager

To use these configurations with Home Manager:

1. Activate the configuration:
```bash
home-manager  switch --flake .#your-name@your-hostname
```

### NixOS

To use the NixOS configuration:

1. Rebuild the system:
```bash
sudo nixos-rebuild switch
```

## Development Environment Setup

The `dev/` module provides configurations for:
- Git
- Neovim
- Golang
- Helix
- Devbox
- UV
- FNM

Simply import the `dev/default.nix` module to enable all development tools.

## Common Commands

- Update flake inputs: `nix flake update`
- Run garbage collection: `nix-collect-garbage -d`
- Search packages: `nix search nixpkgs package-name`

### Taskfile Commands

- List available tasks: `task --list`
- Update mihomo config: `task update-mihomo-config`
- Download geoip database: `task download-geoip`