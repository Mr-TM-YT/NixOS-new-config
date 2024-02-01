# This is your system's configuration file.
# Use this to configure your system environment (it replaces /etc/nixos/configuration.nix)

{ inputs, outputs, lib, config, pkgs, ... }: {
  # You can import other NixOS modules here
  imports = [
    # If you want to use modules your own flake exports (from modules/nixos):
    # outputs.nixosModules.example
    # Or modules from other flakes (such as nixos-hardware):
    # inputs.hardware.nixosModules.common-cpu-amd
    # inputs.hardware.nixosModules.common-ssd

    ./fonts.nix
    ./pkgs.nix
    ./programs.nix
    ./systemd.nix
    ./hardware-configuration.nix
  ];

  nixpkgs = {
    # You can add overlays here
    overlays = [
      # Add overlays your own flake exports (from overlays and pkgs dir):
      outputs.overlays.additions
      outputs.overlays.modifications
      outputs.overlays.unstable-packages

      # Or define it inline, for example:
      # (final: prev: {
      #   hi = final.hello.overrideAttrs (oldAttrs: {
      #     patches = [ ./change-hello-to-hi.patch ];
      #   });
      # })
    ];
    config = {
      allowUnfree = true;
    };
  };

  nix = {
    # This will add each flake input as a registry
    # To make nix3 commands consistent with your flake
    registry = lib.mapAttrs (_: value: { flake = value; }) inputs;

    # This will additionally add your inputs to the system's legacy channels
    # Making legacy nix commands consistent as well, awesome!
    nixPath = lib.mapAttrsToList (key: value: "${key}=${value.to.path}") config.nix.registry;

    settings = {
      # Enable flakes and new 'nix' command
      experimental-features = "nix-command flakes";
      # Deduplicate and optimize nix store
      auto-optimise-store = true;
    };
  };

  networking.networkmanager.enable = true; # Easiest to use and most distros use this by default.
<<<<<<< HEAD
  networking.hostName = "mohamed-pc";
=======
  networking.hostName = "apollo";
>>>>>>> 4e56933 (Improved vscodium.nix)

  # Set your time zone.
  time.timeZone = "Africa/Cairo";
  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";
  i18n.extraLocaleSettings = {
    LC_ADDRESS = "ar_EG.utf8";
    LC_IDENTIFICATION = "ar_EG.utf8";
    LC_MEASUREMENT = "ar_EG.utf8";
    LC_MONETARY = "ar_EG.utf8";
    LC_NAME = "ar_EG.utf8";
    LC_NUMERIC = "ar_EG.utf8";
    LC_PAPER = "ar_EG.utf8";
    LC_TELEPHONE = "ar_EG.utf8";
    LC_TIME = "ar_EG.utf8";
  };


  # Used for sound to work
  security.rtkit.enable = true;
  sound.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    jack.enable = true;
  };

  # Enable Wayland.
  services.xserver = {
    enable = true;
    layout = "us,ara";
    xkbOptions = "grp:alt_shift_toggle";
    desktopManager.xterm.enable = false;
    displayManager.sddm = {
      enable = true;
<<<<<<< HEAD
      theme = "tokyo-night-sddm";
=======
      theme = "sddm-theme";
>>>>>>> 4e56933 (Improved vscodium.nix)
      settings.Theme.CursorTheme = "Bibata-Modern-Classic";
    };
  };

  hardware = {
    opengl.enable = true;
    pulseaudio.enable = false;
  };

  environment.pathsToLink = [ "/share/zsh" ];
  environment.shells = with pkgs; [ zsh ];

  environment.sessionVariables = {
    WLR_NO_HARDWARE_CURSORS = "1";
    NIXOS_OZONE_WL = "1";
  };

  boot.loader = {
    grub = {
      enable = true;
      efiSupport = true;
      device = "nodev";
      gfxmodeEfi = "text";
      gfxmodeBios = "text";
      useOSProber = true;
      # theme = pkgs.fetchFromGitHub {
      #   owner = "Teraskull";
      #   repo = "bigsur-grub2-theme";
      #   rev = "2e8139afd2b6e4cb2dcaf85d8248cbc10d556c6b";
      #   sha256 = "1kaig1mc85ni80wdwbljl97ywywamjpixfarnx9w044lfkkvcmzg";
      # };
      theme = pkgs.grub-theme;
    };
    efi.canTouchEfiVariables = true;
  };

  boot.kernelPackages = pkgs.linuxPackages_latest;
  boot.supportedFilesystems = [ "ntfs" ];

  xdg.portal = {
    enable = true;
    extraPortals = [ pkgs.xdg-desktop-portal-hyprland ];
  };

  users.defaultUserShell = pkgs.zsh;
  users.users = {
    mohamed = {
      initialPassword = "password";
      isNormalUser = true;
      openssh.authorizedKeys.keys = [
        # TODO: Add your SSH public key(s) here, if you plan on using SSH to connect
      ];
      extraGroups = [ "wheel" "video" "audio" "networkmanager" ];
    };
  };

  security.polkit.enable = true;

  # Gnome keyring
  services.gnome.gnome-keyring.enable = true;
<<<<<<< HEAD
  
  services.emacs.enable = true;
=======
>>>>>>> 4e56933 (Improved vscodium.nix)

  # udisk mounting
  services.udisks2 = {
    enable = true;
    mountOnMedia = true;
  };

  virtualisation = {
    waydroid.enable = true;
    lxd.enable = true;
  };

  security.polkit.extraConfig = ''
  polkit.addRule(function(action, subject) {
    if (
      subject.isInGroup("users")
      && (
        action.id == "org.freedesktop.login1.reboot" ||
        action.id == "org.freedesktop.login1.reboot-multiple-sessions" ||
        action.id == "org.freedesktop.login1.power-off" ||
        action.id == "org.freedesktop.login1.power-off-multiple-sessions"
        )
        )
        {
          return polkit.Result.YES;
        }
      })
      '';
  # https://nixos.wiki/wiki/FAQ/When_do_I_update_stateVersion
<<<<<<< HEAD
  system.stateVersion = "23.05";
=======
  system.stateVersion = "23.11";
>>>>>>> 4e56933 (Improved vscodium.nix)
}
