{ inputs, pkgs, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ../../system
  ];

  # ----------------
  # Home Manager
  # ----------------

  home-manager = {
    useGlobalPkgs = true;
    useUserPackages = true;
    users.arda = import ./home.nix;
    backupFileExtension = "backup";
    extraSpecialArgs = { inherit inputs; };
  };

  # ----------------
  # Nix
  # ----------------

  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];
  nix.settings.auto-optimise-store = true;

  nix.gc = {
    automatic = true;
    dates = "weekly";
    options = "--delete-older-than 21d";
  };

  # ----------------
  # Networking
  # ----------------

  networking.hostName = "karadeniz";
  networking.networkmanager.enable = true;

  # ----------------
  # User
  # ----------------

  users.users.arda = {
    isNormalUser = true;
    description = "Arda";
    extraGroups = [
      "networkmanager"
      "wheel"
    ];
    shell = pkgs.fish;
  };

  # ------------------
  # Desktop
  # ------------------

  programs.niri = {
    enable = true;
    useNautilus = false;
  };

  services.greetd = {
    enable = true;
    settings = {
      default_session = {
        command = "${pkgs.tuigreet}/bin/tuigreet --asterisks --time --remember --remember-user-session";
      };
    };
  };

  security.polkit.enable = true;
  services.gnome.gnome-keyring.enable = true;
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

  # ----------------
  # Packages
  # ----------------

  nixpkgs.config.allowUnfree = true;

  # ----------------
  # Programs
  # ----------------

  programs.dconf.enable = true;
  programs.firefox.enable = true;
  programs.fish.enable = true;

  # ----------------
  # Services
  # ----------------

  services.fwupd.enable = true;
  services.gvfs.enable = true;
  services.power-profiles-daemon.enable = true;
  services.udisks2.enable = true;
  services.upower.enable = true;

  # services.flatpak.enable = true;
  # services.libinput.enable = true;
  # services.openssh.enable = true;
  # services.printing.enable = true;

  # https://nixos.wiki/wiki/FAQ/When_do_I_update_stateVersion
  system.stateVersion = "26.05";
}
