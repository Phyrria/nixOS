{ pkgs, ... }: {
  programs.zsh.enable = true;

  users = {
    defaultUserShell = pkgs.zsh;

    users.phyrria = {
      isNormalUser = true;
      description = "Phyrria";
      extraGroups = [ "networkmanager" "wheel" "input" ];
      packages = with pkgs; [];
    };
  };
}
