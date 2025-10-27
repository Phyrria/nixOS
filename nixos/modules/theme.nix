{ pkgs, ...}: {
  stylix.enable = true;

  stylix.base16Scheme = "${pkgs.base16-schemes}/share/themes/catppuccin-macchiato.yaml";

  # Wallpaper
  stylix.image = ./Wallpapers/TreeLake.png;
}
