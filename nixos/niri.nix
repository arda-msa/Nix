{ pkgs, ... }:

{
  programs.niri = {
    enable = true;
    useNautilus = false;
  };

  security.polkit.enable = true;
  security.pam.services.swaylock = { };

  systemd.user.services.polkit-gnome = {
    description = "Polkit GNOME Authentication Agent";
    wantedBy = [ "niri.service" ];
    after = [ "niri.service" ];
    partOf = [ "niri.service" ];
    serviceConfig = {
      Type = "simple";
      ExecStart = "${pkgs.polkit_gnome}/libexec/polkit-gnome-authentication-agent-1";
      Restart = "on-failure";
    };
  };

  environment.systemPackages = with pkgs; [
    brightnessctl
    fuzzel
    mako
    playerctl
    swaybg
    swaylock
    waybar
    wl-clipboard
    xwayland-satellite
  ];
}
