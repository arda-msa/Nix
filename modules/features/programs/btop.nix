{ ... }:

{
  flake.modules.homeManager.btop = { ... }: {
    programs.btop = {
      enable = true;

      settings = {
        theme_background = false;
        save_config_on_exit = false;
        vim_keys = true;
      };
    };
  };
}
