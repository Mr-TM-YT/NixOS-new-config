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
  };
}
