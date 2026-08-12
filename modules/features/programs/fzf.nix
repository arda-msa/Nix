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
        "--layout=reverse"
        "--border=rounded"
        "--scheme=path"
        "--tiebreak=end,length"
        "--preview 'if test -d {}; eza --tree --level=1 --color=always --icons=always {}; else; bat {}; end'"
      ];

      fileWidget.command = "fd --type f ${fdFlags}";
      changeDirWidget.command = "fd --type d ${fdFlags}";
      historyWidget.options = [ "--preview-window hidden" ];
    };

    stylix.targets.fzf.enable = true;
  };
}
