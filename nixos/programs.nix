{ ... }: {
  programs = {
    zsh = {
      enable = true;
      syntaxHighlighting = {
        enable = true;
      };
    };

    nm-applet.enable = true;
    dconf.enable = true;
    steam.enable = true;

    hyprland = {
      enable = true;
      xwayland.enable = true;
    };
  };
}

