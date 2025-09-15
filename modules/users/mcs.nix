{ config, pkgs, ... }:

{
  users.users.mcs = {
    isNormalUser = true;
    description = "mcs";
    extraGroups = [ "networkmanager" "wheel" ];
    shell = pkgs.fish;
    packages = with pkgs; [];
  };
}
