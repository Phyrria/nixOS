{...}: {
  programs.virt-manager.enable = true;

  users.groups.libvirtd.members = ["phyrria"];

  virtualisation.libvirtd.enable = true;

  virtualisation.spiceUSBRedirection.enable = true;
}
