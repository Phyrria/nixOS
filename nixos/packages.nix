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
    inputs.zen-browser.packages."${system}".specific
    xivlauncher

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

    # GUI utils
    mako
    
    # Wayland
    xwayland
    wl-clipboard
    cliphist

    # WMs and bars
    niri
    waybar

    # Other
    home-manager
    mangohud
  ];
}
