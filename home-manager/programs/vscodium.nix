{ pkgs, config, ... }: {

  programs.vscode = {
    enable = true;
    package = pkgs.vscodium;
    extensions = with pkgs.vscode-extensions; [
      vscodevim.vim
      ms-vscode.cpptools
      ms-vscode.cmake-tools
      ritwickdey.liveserver
      jnoortheen.nix-ide
      vscode-icons-team.vscode-icons
      enkia.tokyo-night
    ];
    # }
    #      {
    #  			name = "yuck";
    #  			publisher = "eww-yuck";
    #  			version = " 	0.0.3";
    #			  sha256 = "1vl4jqlr68rzx76wwwm5z0ccwfmjxqsjbcd0l0g8pdbziij82gi3";
    #      }
    # {
    # 	name = "catppuccin-vsc-icons";
    # 	publisher = "Catppuccin";
    # 	version = " 	0.27.0";
    # }
    # /* ] */;
  };
}
