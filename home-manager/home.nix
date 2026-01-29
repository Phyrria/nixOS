{ user, ...}: {
  imports = [
    ./fish.nix
    ./modules/bundle.nix
  ];

  home = {
    username = user;
    homeDirectory = "/home/${user}";
    stateVersion = "25.05";
  };
}
