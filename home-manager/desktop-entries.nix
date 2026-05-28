{ ... }:

{
  xdg.desktopEntries = {
    bluetui = {
      name = "Bluetui";
      genericName = "Bluetooth Manager";
      comment = "Manage bluetooth settings";
      icon = "bluetooth";
      type = "Application";
      terminal = true;
      exec = "bluetui";
      categories = [ "Utility" ];
    };

    wiremix = {
      name = "Wiremix";
      genericName = "Audio Mixer";
      comment = "Manage audio settings";
      icon = "audio";
      type = "Application";
      terminal = true;
      exec = "wiremix";
      categories = [ "Utility" ];
    };

    nvim = {
      name = "Neovim";
      genericName = "Text Editor";
      comment = "Edit text files";
      icon = "nvim";
      type = "Application";
      terminal = true;
      exec = "nvim %F";
      settings = {
        TryExec = "nvim";
        Keywords = "Text;editor;";
      };
      categories = [
        "Utility"
        "TextEditor"
        "Development"
      ];
      startupNotify = false;
      mimeType = [
        "text/english"
        "text/plain"
        "text/x-makefile"
        "text/x-c++hdr"
        "text/x-c++src"
        "text/x-chdr"
        "text/x-csrc"
        "text/x-java"
        "text/x-moc"
        "text/x-pascal"
        "text/x-tcl"
        "text/x-tex"
        "application/x-shellscript"
        "text/x-c"
        "text/x-c++"
      ];
    };
  };
}
