{ pkgs, ... }: {

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; let themes = pkgs.callPackage ../pkgs/sddm-theme.nix { inherit pkgs; }; in
  [
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
    rnix-lsp #lsp
    nixpkgs-fmt
    gvfs
    zip
    unzip
    helix
    xfce.thunar
    swww
    mpvpaper
    vlc
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
    tokyo-night-sddm
    libsForQt5.qt5.qtgraphicaleffects
  ];
}
