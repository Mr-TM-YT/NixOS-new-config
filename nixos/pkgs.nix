{ pkgs, ... }: {

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    home-manager
    git
    firefox
    wl-clipboard
    pulseaudio
    tmux
    pamixer
    wezterm
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
    mpvpaper
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
    udiskie
  ];
}
