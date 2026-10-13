{ config, pkgs, lib, ... }:

{
  programs.git = {
    enable = true;
    settings = {
      user = {
        name = "fadeevich";
        email = "fad.danila053@gmail.com";
      };
      init.defaultBranch = "main";
      core.editor = "nvim";
    };
  };
}
