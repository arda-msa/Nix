{
  flake.modules.homeManager.base = {
    programs.btop = {
      enable = true;

      settings = {
        proc_sorting = "memory";
        save_config_on_exit = false;
        theme_background = false;
        vim_keys = true;
      };
    };

    stylix.targets.btop.enable = true;
  };
}
