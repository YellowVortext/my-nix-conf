{ config, pkgs, ... }:

{
  services = {
    qemuGuest.enable = true;
    spice-vdagentd.enable = true;
    spice-autorandr.enable = true;
  };
  virtualisation = {
    libvirtd.enable = true;
    spiceUSBRedirection.enable = true;
    libvirtd.qemu.swtpm.enable = true;
    libvirtd.qemu.vhostUserPackages = with pkgs; [ virtiofsd ];
  };
  programs.virt-manager.enable = true;
}
