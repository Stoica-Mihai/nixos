{ config, pkgs, ... }:

{ 
  programs.vim = {
    enable = true;
    defaultEditor = true;
    plugins = [
     pkgs.vimPlugins.ale
     pkgs.vimPlugins.nerdtree
    ];
  };
}
