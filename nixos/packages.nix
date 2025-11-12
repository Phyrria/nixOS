{ pkgs, pkgs-stable, inputs,  ...}: {
  nixpkgs.config = {
    allowUnfree = true;
  };

  environment.systemPackages = with pkgs; [
    # Desktop apps
    kitty
    fuzzel
    thunderbird
    pkgs-stable.bottles
    helix
    vlc
    xivlauncher
    discord
    libreoffice
    persepolis

    # Coding
    nodejs
    gnumake
    libgcc

    # CLI utils
    fastfetch
    tree
    wget
    git
    htop
    nix-index
    lazygit
    unzip
    zip
    ffmpeg
    via
    cava
    yt-dlp
    bluez
    bluez-tools
    pciutils

    # GUI utils
    mako
    
    # Wayland
    xwayland
    wl-clipboard
    cliphist
    xwayland-satellite

    # WMs and bars
    niri
    waybar

    # LSP
    llvmPackages_20.clang-tools
    pkgs-stable.texlab
    nil

    # Screenshots
    swappy
    grim
    slurp

    # Other
    home-manager
    mangohud
    swaybg
    swayidle
    swaylock
    maple-mono.NF-unhinted
  ];

}
