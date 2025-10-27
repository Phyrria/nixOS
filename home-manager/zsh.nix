{ config, ...}: {
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
    
    shellAliases =
      let
        flakeDir = "~/nix";
      in {
        rebuild = "sudo nixos-rebuild switch --flake ${flakeDir}";
        update = "nix flake update ${flakeDir}";
        upgrade = "sudo nixos-rebuild switch --upgrade --flake ${flakeDir}";
      };

    history.size = 10000;
    history.path = "${config.xdg.dataHome}/zsh/history";
  };
}
