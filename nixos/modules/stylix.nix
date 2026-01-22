{pkgs, ...}: {
  stylix = {
    enable = true;

    base16Scheme = "${pkgs.base16-schemes}/share/themes/gruvbox-light-hard.yaml";

    image = ./Wallpapers/Castle.png;
  };
}
