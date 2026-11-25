{
  flake.modules.homeManager.btop = {
    programs.btop = {
      enable = true;

      settings = {
        proc_sorting = "memory";
        save_config_on_exit = false;
        theme_background = false;
        vim_keys = true;
      };
    };
  };
}
