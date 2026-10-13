{ config, pkgs, lib, ... }:

{
  programs.bash = {
    enable = true;
    bashrcExtra = ''
      if [ -f ~/.profile ]; then
        source ~/.profile
      fi

      set -o vi
    '';
  };
}
