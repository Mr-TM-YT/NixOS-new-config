{ pkgs, config, ... }: {
  programs.helix = {
    enable = true;
    settings = {
      theme = "tokyonight_storm";
      editor = {
        line-number = "relative";
        mouse = false;
        bufferline = "multiple";
        lsp.display-messages = true;
        cursor-shape.insert = "bar";
        file-picker = {
          hidden = false;
          parents = false;
        };
        indent-guides.render = true;
        soft-wrap.enable = true;
        statusline = {
          left = [ "spinner" "file-name" ];
          center = [ "mode" ];
          right = [ "diagnostics" "selections" "position" "file-encoding" "file-line-ending" "file-type" ];
          mode.normal = "Chilling";
          mode.insert = "Coding";
          mode.select = "Selecting";
        };
      };
      keys.normal = {
        "C-[" = [ "keep_primary_selection" "collapse_selection" ];
      };
      keys.insert = {
        "C-[" = "normal_mode";
      };
      keys.select = {
        "C-[" = [ "normal_mode" "keep_primary_selection" "collapse_selection" ];
      };
    };
  };
}
