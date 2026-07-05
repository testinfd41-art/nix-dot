{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    kdePackages.breeze
    catppuccin-gtk
  ];

  gtk = {
    enable = true;

    iconTheme = {
      name = "Papirus-Dark";
    };

    cursorTheme = {
      name = "breeze_cursors";
      package = pkgs.kdePackages.breeze;
      size = 24;
    };
  };

  home.sessionVariables = {
    XCURSOR_THEME = "breeze_cursors";
    XCURSOR_SIZE = "24";
  };
}
