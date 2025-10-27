{
  imports = [
    ./zsh.nix
    ./modules/bundle.nix
  ];

  home = {
    username = "phyrria";
    homeDirectory = "/home/phyrria";
    stateVersion = "25.05";
  };
}
