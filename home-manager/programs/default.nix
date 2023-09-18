{ pkgs, ... }: {
	imports = [
			./firefox.nix
			./git.nix
			./vscodium.nix
			./waybar
			./zsh.nix
      ./helix.nix
	];
}

