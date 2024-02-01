{ pkgs, config, ... }: {

  programs.vscode = {
    enable = true;
    package = pkgs.vscodium;
    userSettings = {
      "workbench.iconTheme" = "vscode-icons";
      "vim.overrideCopy" = false;
      "editor.fontFamily" = "JetBrains Mono";
      "editor.fontSize" = 16;
      "editor.mouseWheelZoom" = true;
      "window.zoomLevel" = 2;
      "workbench.colorTheme" = "Tokyo Night";
      "vim.easymotion" = true;
      "vim.useSystemClipboard" = true;
      "vim.leader" = "<space>";
      "vim.camelCaseMotion.enable" = false;
      };
    extensions = with pkgs.vscode-extensions; [
      vscodevim.vim
      ritwickdey.liveserver
      jnoortheen.nix-ide
      vscode-icons-team.vscode-icons
      enkia.tokyo-night
      esbenp.prettier-vscode
      formulahendry.auto-rename-tag
    ];
  };
}
