{ config, pkgs, ... }:

{ 
  programs.vim = {
    enable = true;
    defaultEditor = true;
    settings = {
      tabstop = 2;
      shiftwidth = 2;
      expandtab = true;
    };

    plugins = with pkgs.vimPlugins; [
      ale
      airline
    ];
  };
}
