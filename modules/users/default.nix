{
  # Enable NixOS system packages
  programs.fish.enable = true;
  
  # Import submodules
  imports = [
    ./mcs.nix
  ];
}
