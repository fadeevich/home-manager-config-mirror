{ config, pkgs, lib, ... }:

{
  services.dunst = {
    enable = true;
    settings = {
      global = {
        width = 300;
        height = "(0, 300)";
        notification_limit = 5;

        frame_width = 1;
        separator_color = "frame";

        font = "JetBrainsMono Nerd Font 8";
        format = "<b>%s</b>\\n%b";

        hide_duplicate_count = true;
      };

      urgency_normal = {
        background = "#1a1b26";
        foreground = "#c0caf5";
        frame_color = "#7aa2f7";
        timeout = 5;
      };

      telegram = {
        urgency = "normal";
        timeout = 5;
      };
    };
  };
}
