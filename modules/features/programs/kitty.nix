{
  flake.modules.homeManager.graphical = {
    programs.kitty = {
      enable = true;

      font = {
        name = "JetBrainsMono Nerd Font";
        size = 12;
      };

      settings = {
        # General
        enable_audio_bell = false;
        update_check_interval = 0;

        # Window Behavior
        allow_remote_control = "yes";
        listen_on = "unix:@mykitty";
        hide_window_decorations = "yes";
        remember_window_size = "yes";
        initial_window_width = 1080;
        initial_window_height = 920;
        scrollback_lines = 10000;

        # Appearance
        cursor_shape = "block";
        # cursor_blink_interval = 0;
        cursor_trail = 3;
        cursor_trail_decay = "0.1 0.4";
        window_padding_width = "0 4";
        tab_bar_edge = "bottom";
        tab_bar_style = "powerline";
        tab_title_template = " {index}: {title[title.rfind('/')+1:]} ";
        touch_scroll_multiplier = 8;
        draw_minimal_borders = "yes";
        window_border_width = "1pt";
        enabled_layouts = "splits,tall,stack";
      };

      shellIntegration = {
        mode = "no-cursor";
        enableFishIntegration = true;
      };
    };

    home.sessionVariables.TERMINAL = "kitty";

    stylix.targets.kitty.enable = true;
  };
}
