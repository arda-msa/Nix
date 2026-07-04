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

    fileWidget.command = "fd --hidden --follow --exclude .git --strip-cwd-prefix";
    fileWidget.options = [
      "--preview 'if test -d {}; tree -C {} | head -50; else; bat --color=always --style=numbers --line-range=:500 {}; end'"
      "--bind 'alt-p:change-preview-window(down|hidden|)'"
    ];

    changeDirWidget.command = "fd --type d --hidden --follow --exclude .git --strip-cwd-prefix";
    changeDirWidget.options = [
      "--preview 'tree -C {} | head -50'"
    ];

    historyWidget.options = [
      "--with-nth 2.."
      "--bind 'alt-t:change-with-nth(2..|1..)'"
    ];
  };
}
