{ config, lib, pkgs, ... }:

{
  imports = [
    ./apps/firefox.nix
    ./apps/chromium.nix
    ./apps/theme.nix
  ];
}
