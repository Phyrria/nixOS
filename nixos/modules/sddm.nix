{pkgs, ...}: let
  cursorPkg = pkgs.catppuccin-cursors.latteLight;
  cursorName = "catppuccin-latte-light-cursors";

  defaultCursorTheme = pkgs.runCommand "default-cursor-theme" {} ''
    mkdir -p $out/share/icons/default
    cat > $out/share/icons/default/index.theme <<EOF
    [Icon Theme]
    Inherits=${cursorName}
    EOF
  '';
in {
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
    cursorPkg
    defaultCursorTheme
  ];

  services.displayManager.sddm = {
    theme = "catppuccin-latte-rosewater";
    package = pkgs.kdePackages.sddm;
    settings.Theme = {
      CursorTheme = cursorName;
      CursorSize = 48;
    };
  };
}
