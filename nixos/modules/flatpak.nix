{
  services.flatpak.enable = true;
  services.flatpak.remotes = [{
  name = "flathub-beta"; location = "https://flathub.org/beta-repo/flathub-beta.flatpakrepo";
  }];
  
  services.flatpak.packages = [
    "app.zen_browser.zen"
  ];
}
