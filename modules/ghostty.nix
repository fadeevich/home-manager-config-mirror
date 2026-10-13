{ config, pkgs, lib, ... }:

{
    programs.ghostty = {
      enable = true;
      package = null;
      systemd.enable = false;
      
      enableBashIntegration = true;

      settings = {
        # font
        font-family = "JetBrainsMono Nerd Font";
        font-size = "11";
        font-feature = "-calt";

        # mouse
        mouse-hide-while-typing = "true";

        # cursor
        shell-integration-features = "no-cursor";
        cursor-style = "block";
        cursor-style-blink = "false";

        # window
        gtk-single-instance = "true";
        gtk-tabs-location = "hidden";
        gtk-wide-tabs = "false";
        window-padding-x = "5,5";
        window-padding-y = "5,0";
        window-padding-balance = "true";
        confirm-close-surface = "false";
        gtk-titlebar = "false";
        window-decoration = "false";

        resize-overlay = "never";

        keybind = [
          "ctrl+shift+n=unbind"
          "ctrl+shift+p=unbind"
        ];

        palette = [
          "0=#15161e"
          "1=#f7768e"
          "2=#9ece6a"
          "3=#e0af68"
          "4=#7aa2f7"
          "5=#bb9af7"
          "6=#7dcfff"
          "7=#a9b1d6"
          "8=#414868"
          "9=#f7768e"
          "10=#9ece6a"
          "11=#e0af68"
          "12=#7aa2f7"
          "13=#bb9af7"
          "14=#7dcfff"
          "15=#c0caf5"
        ];

        background = "#1a1b26";
        foreground = "#c0caf5";
        cursor-color = "#c0caf5";
        cursor-text = "#15161e";
        selection-background = "#33467c";
        selection-foreground = "#c0caf5";
      };
    };
}
