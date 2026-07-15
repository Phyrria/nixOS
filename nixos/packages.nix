{
  pkgs,
  pkgs-stable,
  inputs,
  ...
}: {
  nixpkgs.config = {
    allowUnfree = true;
  };

  programs.nh.enable = true;

  services.udev.packages = [pkgs.solaar];

  environment.systemPackages = with pkgs; [
    # Desktop apps
    kitty
    fuzzel
    thunderbird
    pkgs-stable.bottles
    vlc
    xivlauncher
    discord
    libreoffice
    protonplus
    inputs.zen-browser.packages.${pkgs.system}.default
    vscodium
    via
    forge-mtg
    blender
    solaar
    protontricks
    p7zip
    winetricks
    limo
    (limo.override {withUnrar = true;})
    kdePackages.dolphin
    kdePackages.dolphin-plugins

    # Coding
    nodejs
    gnumake
    libgcc

    # CLI utils
    tree
    git
    htop
    nix-index
    unzip
    zip
    ffmpeg
    yt-dlp
    bluez
    bluez-tools
    pciutils
    aria2
    rar
    unrar
    fastfetch
    yazi
    file
    psmisc
    wineWow64Packages.staging

    # GUI utils
    mako
    #inputs.noctalia.packages.${pkgs.stdenv.hostPlatform.system}.default

    # Wayland
    xwayland
    wl-clipboard
    cliphist
    xwayland-satellite

    # LSP
    llvmPackages_20.clang-tools
    pkgs-stable.texlab
    nixd

    # Screenshots
    swappy
    grim
    slurp

    # Other
    home-manager
    mangohud
    swaybg
    alejandra
    wireplumber
  ];
}
