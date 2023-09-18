{ pkgs, ... }: {

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    home-manager
    wget
    git
    firefox
    fzf
    pamixer
    kitty
    emacs29-pgtk
    neovim
    xdg-desktop-portal-gtk
    eww
    discord
    luajit
    nix-prefetch-git
    nil #lsp
    dconf
    gvfs
    zip
    unzip
    gparted
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
    adwaita-qt
    adwaita-qt6
    sddm-theme
    libsForQt5.qtstyleplugin-kvantum
    libsForQt5.qt5ct
    udiskie
    qt5.qtsvg
    qt5.qtgraphicaleffects
    qt5.qtquickcontrols2
  ];
}
