{ ... }:

{
  services.mako = {
    enable = true;

    settings = {
      max-history = 20;
      sort = "-time";

      on-button-left = "invoke-default-action";
      on-button-middle = "dismiss-group";
      on-button-right = "dismiss";
      on-touch = "invoke-default-action";

      font = "JetBrainsMono Nerd Font 11";
      background-color = "#1a1a1aee";
      text-color = "#eeeeee";
      width = 320;
      height = 200;
      outer-margin = 10;
      margin = 5;
      padding = "10,16";
      border-size = 2;
      border-color = "#4C7899FF";
      border-radius = 4;
      progress-color = "over #5588AAFF";

      icons = 1;
      max-icon-size = 64;
      icon-path = "/run/current-system/sw/share/icons/MoreWaita:/run/current-system/sw/share/icons/Adwaita:/run/current-system/sw/share/icons/hicolor";
      icon-location = "left";

      markup = 1;
      actions = 1;
      history = 1;
      format = "<b>%s</b>\\n%b";
      text-alignment = "left";
      default-timeout = 5000;
      ignore-timeout = 0;
      max-visible = 5;
      layer = "overlay";
      anchor = "top-right";
    };

    extraConfig = ''
      [urgency=low]
      border-color=#555555ff
      text-color=#aaaaaa
      default-timeout=3000

      [urgency=critical]
      border-color=#cc4444ff
      background-color=#2a1010ee
      default-timeout=0

      [mode=do-not-disturb]
      invisible=1

      [hidden=true]
      format=(%h more)
      invisible=0

      [grouped]
      format=(%g) <b>%s</b>\n%b
    '';
  };
}
