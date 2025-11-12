{ pkgs, ...}: {
  stylix = {
    enable = true;

    base16Scheme = "${pkgs.base16-schemes}/share/themes/gruvbox-dark-hard.yaml";

    image = ./Wallpapers/TreeLake.png;
  };
}
