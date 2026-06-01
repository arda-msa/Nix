{ pkgs, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ./home-manager.nix
    ./packages.nix
  ];

  # ----------------
  # Boot
  # ----------------

  boot.loader.systemd-boot.enable = true;
  boot.loader.systemd-boot.configurationLimit = 8;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.kernelPackages = pkgs.linuxPackages_latest;

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
    options = "--delete-older-than 7d";
  };

  # ----------------
  # Networking
  # ----------------

  networking.hostName = "karadeniz";
  networking.networkmanager.enable = true;

  # ----------------
  # Locale
  # ----------------

  time.timeZone = "Europe/Istanbul";

  i18n.defaultLocale = "en_US.UTF-8";
  i18n.extraLocaleSettings = {
    LC_ADDRESS = "tr_TR.UTF-8";
    LC_IDENTIFICATION = "tr_TR.UTF-8";
    LC_MEASUREMENT = "tr_TR.UTF-8";
    LC_MONETARY = "tr_TR.UTF-8";
    LC_NAME = "tr_TR.UTF-8";
    LC_NUMERIC = "tr_TR.UTF-8";
    LC_PAPER = "tr_TR.UTF-8";
    LC_TELEPHONE = "tr_TR.UTF-8";
    LC_TIME = "tr_TR.UTF-8";
  };

  # ----------------
  # Keymap
  # ----------------

  services.xserver.xkb = {
    layout = "tr";
    variant = "";
  };

  console.keyMap = "trq";

  # ----------------
  # Audio
  # ----------------

  services.pulseaudio.enable = false;

  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    # jack.enable = true;
    wireplumber.enable = true;
  };

  security.rtkit.enable = true;

  # ----------------
  # Hardware
  # ----------------

  hardware.bluetooth = {
    enable = true;
    powerOnBoot = false;
  };

  hardware.graphics = {
    enable = true;
    extraPackages = with pkgs; [
      intel-media-driver
    ];
  };

  hardware.intel-gpu-tools.enable = true;

  zramSwap.enable = true;

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

  # services.displayManager.gdm.enable = true;
  # services.desktopManager.gnome.enable = true;
  #
  # services.gnome.core-apps.enable = false;
  #
  # environment.gnome.excludePackages = with pkgs; [
  #   gnome-software
  #   gnome-tour
  # ];

  programs.niri = {
    enable = true;
    # useNautilus = false;
  };

  services.greetd = {
    enable = true;
    settings = {
      default_session = {
        command = "${pkgs.tuigreet}/bin/tuigreet --time --remember --remember-user-session";
      };
    };
  };
  systemd.user.services.niri.enableDefaultPath = false;

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

  # ------------------
  # Portals
  # ------------------

  xdg.portal.extraPortals = with pkgs; [
    xdg-desktop-portal-termfilechooser
  ];

  # xdg.portal.config.gnome."org.freedesktop.impl.portal.FileChooser" = [ "termfilechooser" ];
  xdg.portal.config.niri."org.freedesktop.impl.portal.FileChooser" = [ "termfilechooser" ];

  # ----------------
  # Packages
  # ----------------

  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    git
    wget
    nvd
    nix-output-monitor
    nix-search-tv
    nix-your-shell
  ];

  # ----------------
  # Programs
  # ----------------

  programs.dconf.enable = true;
  programs.firefox.enable = true;
  programs.fish.enable = true;

  programs.localsend = {
    enable = true;
    openFirewall = true;
  };

  programs.nh = {
    enable = true;
    flake = "$HOME/nixos";
  };

  # ----------------
  # Fonts
  # ----------------

  fonts.packages = with pkgs; [
    noto-fonts
    noto-fonts-color-emoji
    noto-fonts-cjk-sans
    adwaita-fonts
    dejavu_fonts
    liberation_ttf
    nerd-fonts.jetbrains-mono
  ];

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
