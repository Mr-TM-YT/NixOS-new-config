{ pkgs, ... }: {
# Fonts.
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
		# (nerdfonts.override { fonts = [ "JetBrainsMono" ]; })
   (nerdfonts.override { fonts = [ "FantasqueSansMono" ]; })
	];  
}
