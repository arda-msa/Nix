{ ... }:

{
  programs.fzf = {
    enable = true;
    enableFishIntegration = true;

    defaultCommand = "fd --type f --hidden --follow --exclude .git --strip-cwd-prefix";
    defaultOptions = [
      "--layout=reverse"
      "--border=rounded"
      "--scheme=path"
    ];

    fileWidgetCommand = "fd --hidden --follow --exclude .git --strip-cwd-prefix";
    fileWidgetOptions = [
      "--preview 'if test -d {}; tree -C {} | head -50; else; bat --color=always --style=numbers --line-range=:500 {}; end'"
      "--bind 'alt-p:change-preview-window(down|hidden|)'"
    ];

    changeDirWidgetCommand = "fd --type d --hidden --follow --exclude .git --strip-cwd-prefix";
    changeDirWidgetOptions = [
      "--preview 'tree -C {} | head -50'"
    ];

    historyWidgetOptions = [
      "--with-nth 2.."
      "--bind 'alt-t:change-with-nth(2..|1..)'"
    ];
  };
}
