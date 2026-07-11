{ pkgs, ... }:

{
  security.polkit = {
    enable = true;
    enablePkexecWrapper = true;
  };

  # systemd.user.services.polkit-gnome = {
  #   description = "Polkit GNOME Authentication Agent";
  #   wantedBy = [ "niri.service" ];
  #   after = [ "niri.service" ];
  #   partOf = [ "niri.service" ];
  #   serviceConfig = {
  #     Type = "simple";
  #     ExecStart = "${pkgs.polkit_gnome}/libexec/polkit-gnome-authentication-agent-1";
  #     Restart = "on-failure";
  #   };
  # };
}
