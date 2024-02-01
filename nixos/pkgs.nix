{ pkgs, ... }: {

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    home-manager
    wget
    git
    firefox
    wl-clipboard
    pulseaudio
    pamixer
    kitty
    neovim
    xdg-desktop-portal-gtk
    discord
    nix-prefetch-git
    nil #lsp
    gvfs
    zip
    unzip
    helix
    xfce.thunar
    swww
    eza
    bibata-cursors
    rofi-wayland
    libnotify
    swaynotificationcenter
    bat
    btop
    grim
    slurp
    networkmanagerapplet
    qgnomeplatform
    qgnomeplatform-qt6
    sddm-theme
    udiskie
  ];
}
