{ config, pkgs, ... }:

{
  programs.git = {
    enable = true;
    userName = "MCS";
    userEmail ="email@gmail.com";

    extraConfig = {
     core.editor = "vim";
    };

    aliases = {
      c = "commit";
      s = "status";
      l = "log --color --graph --pretty=format:'%C(cyan)%h%Creset -%C(yellow)%d%Creset %s %C(green)(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit";
      ac = "!git add -A && git commit";
    };
  };
}
