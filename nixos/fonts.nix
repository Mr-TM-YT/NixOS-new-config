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
    kawkab-mono-font
    (nerdfonts.override { fonts = [ "JetBrainsMono" "FiraCode" ]; })
    # (nerdfonts.override { fonts = [ "FantasqueSansMono" ]; })
  ];
}
