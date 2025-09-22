{ config, pkgs, ... }:

{
  programs.git = {
    enable = true;
    userName = "MCS";
    userEmail ="email@gmail.com";

    extraConfig = {
     core.editor = "vim";
    };
  };
}
