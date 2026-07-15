{pkgs, ...}: {
  home.pointerCursor = {
    enable = true;
    gtk.enable = true;
    x11.enable = true;

    package = pkgs.catppuccin-cursors.latteLight;
    name = "catppuccin-latte-light-cursors";
    size = 48;
  };
}
