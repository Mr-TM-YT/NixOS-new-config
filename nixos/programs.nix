{ pkgs, config, ...}: {
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
		
		# waybar = {
		# 	enable = true;
		# 	package = pkgs.waybar.overrideAttrs (oldAttrs: {
		# 			mesonFlags = oldAttrs.mesonFlags ++ [ "-Dexperimental=true" ];
		# 			});
		# };

	};


}

