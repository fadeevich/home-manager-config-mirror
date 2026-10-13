{ config, pkgs, lib, ... }:

{
  programs.git = {
    enable = true;
    settings = {
      user = {
        name = "fadeevich";
        email = "fadeevich@tutamail.com";
      };
      init.defaultBranch = "main";
      core.editor = "nvim";
    };
  };
}
