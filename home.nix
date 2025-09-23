{ config, pkgs, ...}:

{
  home.stateVersion = "25.05";
  home.enableNixpkgsReleaseCheck = false;

  home.file.".wezterm.lua".source = ./dotfiles/wezterm/.wezterm.lua; 
  home.file.".config/fish/config.fish".source = ./dotfiles/fish/config.fish; 
  home.file.".config/fish/functions/fish_prompt.fish".source = ./dotfiles/fish/fish_prompt.fish;
  home.file.".config/lxqt".source = ./dotfiles/lxqt;

  imports = [
    ./home-modules/programs
    ./home-modules/fonts
  ];
}
