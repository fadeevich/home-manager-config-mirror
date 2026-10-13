{ config, pkgs, ... }:

{
  imports = [
    ./modules/bash.nix
    ./modules/git.nix
    ./modules/ghostty.nix
    ./modules/rofi.nix
    ./modules/dunst.nix
    ./modules/zathura.nix
    ./modules/ranger.nix
  ];

  home.username = "fadeevich";
  home.homeDirectory = "/home/fadeevich";

  xdg = {
    portal = {
      enable = true;
      extraPortals = with pkgs; [
        xdg-desktop-portal-gtk
      ];
      config.common.default = [ "gtk" ];
    };
    configFile = {
      "tmux/tmux.conf".source = ./dotfiles/tmux/tmux.conf;
      "sxhkd/sxhkdrc".source = ./dotfiles/sxhkd/sxhkdrc;
      "bspwm/bspwmrc".source = ./dotfiles/bspwm/bspwmrc;
    };
  };

  home.sessionPath = [
    "$HOME/.local/bin"
    "$HOME/.cargo/bin"
  ];

  home.sessionVariables = {
    XDG_CONFIG_HOME = "$HOME/.config";
    XDG_CURRENT_DESKTOP = "bspwm";
    XDG_SESSION_DESKTOP = "bspwm";
    DESKTOP_SESSION = "bspwm";
    GTK_IM_MODULE = "fcitx";
    QT_IM_MODULE = "fcitx";
    XMODIFIERS = "@im=fcitx";
    QT_QPA_PLATFORMTHEME = "qt6ct";
  };

  home.stateVersion = "26.05";

  home.backupFileExtension = "backup";

  programs.home-manager.enable = true;
}
