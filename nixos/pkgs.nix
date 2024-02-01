{ pkgs, ... }: {

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    home-manager
<<<<<<< HEAD
    wget
=======
>>>>>>> 4e56933 (Improved vscodium.nix)
    git
    firefox
    wl-clipboard
    pulseaudio
<<<<<<< HEAD
    pamixer
    kitty
=======
    tmux
    pamixer
    wezterm
>>>>>>> 4e56933 (Improved vscodium.nix)
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
<<<<<<< HEAD
=======
    mpvpaper
>>>>>>> 4e56933 (Improved vscodium.nix)
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
<<<<<<< HEAD
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
=======
    udiskie
>>>>>>> 4e56933 (Improved vscodium.nix)
  ];
}
