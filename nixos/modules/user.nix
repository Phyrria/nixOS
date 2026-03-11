{pkgs, ...}: {
  #programs.zsh.enable = true;
  programs.fish.enable = true;

  users = {
    defaultUserShell = pkgs.fish;

    users.phyrria = {
      isNormalUser = true;
      description = "Phyrria";
      extraGroups = ["networkmanager" "wheel" "input"];
      packages = with pkgs; [];
    };
  };
}
