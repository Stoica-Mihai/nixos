{ config, pkgs, ... }:

{
  imports = [
   ./firefox.nix 
   ./git.nix
   ./vim.nix
   ./bat.nix
   ./fzf.nix
   ./fish.nix
  ];
}
