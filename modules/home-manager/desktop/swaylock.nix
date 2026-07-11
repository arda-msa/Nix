{ config, ... }:

{
  programs.swaylock = {
    enable = true;

    settings = {
      # Image
      image = "${config.home.homeDirectory}/wallpapers/cherry-blossom-train.jpg";
      scaling = "fill";

      # Behavior
      show-failed-attempts = true;
      ignore-empty-password = true;

      # Font
      font = "JetBrainsMono Nerd Font";
      font-size = 16;

      # Indicator
      indicator-idle-visible = true;
      indicator-radius = 120;
      indicator-thickness = 10;

      # Separator
      separator-color = "00000000";

      # Layout box
      layout-bg-color = "00000000";
      layout-border-color = "00000000";
      layout-text-color = "e0e0e0";

      # Idle / default
      color = "212121";
      ring-color = "63a4ff";
      inside-color = "21212199";
      line-color = "00000000";
      text-color = "e0e0e0";
      key-hl-color = "a3e8e8";
      bs-hl-color = "ff9a9e";

      # Cleared
      ring-clear-color = "b5e8a9";
      inside-clear-color = "21212199";
      line-clear-color = "00000000";
      text-clear-color = "b5e8a9";

      # Verifying
      ring-ver-color = "ffe6a7";
      inside-ver-color = "21212199";
      line-ver-color = "00000000";
      text-ver-color = "ffe6a7";

      # Wrong
      ring-wrong-color = "ff9a9e";
      inside-wrong-color = "21212199";
      line-wrong-color = "00000000";
      text-wrong-color = "ff9a9e";

      # Caps Lock
      ring-caps-lock-color = "ff8952";
      inside-caps-lock-color = "21212199";
      line-caps-lock-color = "00000000";
      text-caps-lock-color = "ff8952";
      caps-lock-bs-hl-color = "ff9a9e";
      caps-lock-key-hl-color = "a3e8e8";
    };
  };
}
