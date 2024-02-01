{ config, pkgs, ... }: {

  programs.tmux = {
    enable = true;

    baseIndex = 1;

    shortcut = "f";

    plugins = with pkgs; [
      tmuxPlugins.sensible
    ];
  };
}
