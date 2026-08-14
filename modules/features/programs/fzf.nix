let
  fdFlags = "--hidden --follow --strip-cwd-prefix";
in

{
  flake.modules.homeManager.base = {
    programs.fzf = {
      enable = true;
      enableFishIntegration = true;

      defaultCommand = "fd --type f ${fdFlags}";
      defaultOptions = [
        "--border=rounded"
        "--layout=reverse"
        "--preview 'if test -d {}; eza --tree --level=1 --color=always --icons=always {}; else; bat {}; end'"
        "--scheme=path"
        "--tiebreak=end,length"
      ];

      fileWidget.command = "fd --type f ${fdFlags}";
      changeDirWidget.command = "fd --type d ${fdFlags}";
      historyWidget.options = [ "--preview-window hidden" ];
    };

    stylix.targets.fzf.enable = true;
  };
}
