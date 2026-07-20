{pkgs, ...}: {
  services.displayManager.sddm.enable = true;
  services.displayManager.sddm.wayland.enable = true;

  environment.systemPackages = [
    (pkgs.catppuccin-sddm.override {
      flavor = "latte";
      accent = "rosewater";
      font = "Noto Sans";
      fontSize = "9";
      clockEnabled = true;
      background = "${../../home-manager/modules/Wallpapers/wallhaven-o31o2p_1920x1080.png}";
      loginBackground = true;
    })
    pkgs.catppuccin-cursors.latteLight
  ];

  services.displayManager.sddm = {
    theme = "catppuccin-latte-rosewater";
    settings.Theme = {
      CursorTheme = "catppuccin-latte-light-cursors";
      CursorSize = 48;
    };
  };
}
