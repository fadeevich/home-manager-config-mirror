{ config, pkgs, lib, ... }:

{
  programs.rofi = {
    enable = true;
    settings = {
      font = "JetBrainsMono Nerd 10";
      modes = [
        "window"
        "drun"
        "combi"
      ];
    };
    theme = let
      inherit (config.lib.formats.rasi) mkLiteral;
    in {
      "*" = {
        bg = mkLiteral "#1a1b26";
        hv = mkLiteral "#7aa2f7";
        primary = mkLiteral "#565f89";
        ug = mkLiteral "#0b2447";
        background-color = mkLiteral "@bg";
        border = mkLiteral "0px";
        kl = mkLiteral "#7aa2f7";
        black = mkLiteral "#000000";
        transparent = mkLiteral "rgba(46, 52, 64, 0)";
      };

      "window" = {
        width = mkLiteral "700";
        orientation = mkLiteral "horizontal";
        location = mkLiteral "center";
        anchor = mkLiteral "center";
        transparency = "screeenshot";
        border-color = mkLiteral "@primary";
        border = mkLiteral "1px";
        spacing = mkLiteral "0";
        children = map mkLiteral [ "mainbox" ];
      };

      "mainbox" = {
        spacing = mkLiteral "0";
        children = map mkLiteral [ "inputbar" "message" "listview" ];
      };

      "inputbar" = {
        color = mkLiteral "@kl";
        padding = mkLiteral "11px";
        border = mkLiteral "0 0 1px 0";
        border-color = mkLiteral "@primary";
      };

      "message" = {
        padding = mkLiteral "0";
      };

      "textbox" = {
        color = mkLiteral "@kl";
        padding = mkLiteral "10px";
      };

      "entry, prompt, case-indicator" = {
        text-font = mkLiteral "inherit";
        text-color = mkLiteral "inherit";
      };

      "entry" = {
        cursor = mkLiteral "pointer";
      };

      "prompt" = {
        margin = mkLiteral "0 5px 0 0";
      };

      "listview" = {
        layout = mkLiteral "vertical";
        padding = mkLiteral "8px";
        lines = mkLiteral "12";
        columns = mkLiteral "1";
        dynamic = false;
      };

      "element" = {
        padding = mkLiteral "2px";
        vertical-align = mkLiteral "1";
        color = mkLiteral "@kl";
        font = mkLiteral "inherit";
      };

      "element-text" = {
        background-color = mkLiteral "inherit";
        text-color = mkLiteral "inherit";
      };

      "element selected.normal" = {
        color = mkLiteral "@black";
        background-color = mkLiteral "@hv";
      };

      "element normal active" = {
        color = mkLiteral "@black";
        background-color = mkLiteral "@hv";
      };

      "element-text, element-icon" = {
        background-color = mkLiteral "inherit";
        text-color = mkLiteral "inherit";
      };

      "element normal urgent" = {
        background-color = mkLiteral "@primary";
      };

      "element selected active" = {
        background = mkLiteral "@hv";
        foreground = mkLiteral "@bg";
      };

      "button" = {
        padding = mkLiteral "6px";
        color = mkLiteral "@primary";
        horizontal-align = mkLiteral "0.5";
        border = mkLiteral "2px 0 2px 2px";
        border-radius = mkLiteral "4px 0 0 4px";
        border-color = mkLiteral "@primary";
      };

      "button selected normal" = {
        border = mkLiteral "2px 0 2px 2px";
        border-color = mkLiteral "@primary";
      };

      "scrollbar" = {
        enabled = true;
      };
    };
  };
}
