{ config, pkgs, ... }:

{ 
  programs.vim = {
    enable = true;
    defaultEditor = true;
    plugins = with pkgs.vimPlugins; [
      ale
      airline
    ];
  };
}
