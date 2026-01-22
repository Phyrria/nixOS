{config, ...}: {
  programs.fish = {
    enable = true;

    shellAliases = let
      flakeDir = "~/nix";
    in {
      rebuild = "sudo nixos-rebuild switch --flake ${flakeDir}";
      update = "nix flake update ${flakeDir}";
      upgrade = "sudo nixos-rebuild switch --upgrade --flake ${flakeDir}";
    };
  };
}
