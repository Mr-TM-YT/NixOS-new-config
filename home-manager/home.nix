<<<<<<< HEAD
# This is your home-manager configuration file
# Use this to configure your home environment (it replaces ~/.config/nixpkgs/home.nix)

{ inputs, outputs, lib, config, pkgs, ... }: {
  # You can import other home-manager modules here
  imports = [
    ./programs
    ./themes
    # inputs.gbar.homeManagerModules.x86_64-linux.default
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
    # Configure your nixpkgs instance
    config = {
      # Disable if you don't want unfree packages
=======
{ inputs, outputs, lib, config, pkgs, ... }: {
  imports = [
    ./programs
    ./themes
  ];

  nixpkgs = {
    overlays = [
      outputs.overlays.additions
      outputs.overlays.modifications outputs.overlays.unstable-packages ];
    config = {
>>>>>>> 4e56933 (Improved vscodium.nix)
      allowUnfree = true;
      # Workaround for https://github.com/nix-community/home-manager/issues/2942
      allowUnfreePredicate = (_: true);
    };
  };

  home = {
    username = "mohamed";
    homeDirectory = "/home/mohamed";
  };

<<<<<<< HEAD
  home.packages = with pkgs; [ fastfetch ppsspp-sdl-wayland ];
=======
  home.packages = with pkgs; [ fastfetch bookworm kooha ];
>>>>>>> 4e56933 (Improved vscodium.nix)

  home.sessionVariables = {
    EDITOR = "nvim";
    BROWSER = "firefox";
    TERMINAL = "kitty";
    XDG_PICTURES_DIR = "~/Pictures/";
  };

  home.shellAliases = {
    ls = "eza -lag --color=always --group-directories-first --icons --color-scale";
    grep = "grep --color=always";
    cd = "z";
    cat = "bat";
    sduo = "sudo";
    suod = "sudo";
<<<<<<< HEAD
    home-switch = "home-manager switch --flake ~/system#mohamed@mohamed-pc";
    root-switch = "sudo nixos-rebuild switch --flake ~/system#mohamed-pc";
=======
    home-switch = "home-manager switch --flake ~/system#mohamed@apollo";
    root-switch = "sudo nixos-rebuild switch --flake ~/system#apollo";
>>>>>>> 4e56933 (Improved vscodium.nix)
  };

  # Enable home-manager and git
  programs = {
    home-manager.enable = true;

    kitty = {
      enable = true;
      font = {
        name = "JetBrainsMono";
        size = 14;
      };
      theme = "Tokyo Night";
      settings = {
        background_opacity = "0.9";
      };
    };

    btop = {
      settings = {
        color_theme = "tokyo-storm";
        theme_background = true;
        vim_keys = true;
      };
    };

    zoxide = {
      enable = true;
    };

    starship = {
      enable = true;
    };

<<<<<<< HEAD
    tint2.enable = true;

    mpv = {
      enable = true;
      config = {
        "osd-font" = "UbuntuMono Nerd Font";
        "osd-font-size" = "14";
        "osd-bar-align-y" = "0.95";
        "osd-on-seek" = "msg-bar";
        "osd-bold" = "no";
        "osd-border-size" = "0";
        "osd-back-color" = "#4f1b1d1e";
        "osd-color" = "#ffffff";
        "osd-duration" = "3000";
        "osd-level" = "3";
      };
      bindings = {
        "j" = "seek 5";
        "h" = "seek -5";
        "Ctrl+j" = "seek 30";
        "Ctrl+h" = "seek -30";
      };
    };
=======
    # mpv = {
    #   enable = true;
    #   config = {
    #     "osd-font" = "UbuntuMono Nerd Font";
    #     "osd-font-size" = "14";
    #     "osd-bar-align-y" = "0.95";
    #     "osd-on-seek" = "msg-bar";
    #     "osd-bold" = "no";
    #     "osd-border-size" = "0";
    #     "osd-back-color" = "#4f1b1d1e";
    #     "osd-color" = "#ffffff";
    #     "osd-duration" = "3000";
    #     "osd-level" = "3";
    #   };
    #   bindings = {
    #     "j" = "seek 5";
    #     "h" = "seek -5";
    #     "Ctrl+j" = "seek 30";
    #     "Ctrl+h" = "seek -30";
    #   };
    # };
>>>>>>> 4e56933 (Improved vscodium.nix)
  };

  # Nicely reload system units when changing configs
  systemd.user.startServices = "sd-switch";

  # https://nixos.wiki/wiki/FAQ/When_do_I_update_stateVersion
<<<<<<< HEAD
  home.stateVersion = "23.05";
=======
  home.stateVersion = "23.11";
>>>>>>> 4e56933 (Improved vscodium.nix)
}
