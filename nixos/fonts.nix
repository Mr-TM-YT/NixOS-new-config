{ pkgs, ... }: {
  fonts.enableDefaultPackages = true;

  fonts.fontDir.enable = true;

  fonts.packages = with pkgs; [
    noto-fonts
    noto-fonts-emoji
    noto-fonts-cjk
    liberation_ttf
    fira-code
    fira-code-symbols
    font-awesome
<<<<<<< HEAD
    (nerdfonts.override { fonts = [ "JetBrainsMono" ]; })
=======
    kawkab-mono-font
    (nerdfonts.override { fonts = [ "JetBrainsMono" "FiraCode" ]; })
>>>>>>> 4e56933 (Improved vscodium.nix)
    # (nerdfonts.override { fonts = [ "FantasqueSansMono" ]; })
  ];
}
