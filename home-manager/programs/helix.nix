{ pkgs, config, ...}: {
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
      };
      keys.normal = {
        "C-[" = [ "keep_primary_selection" "collapse_selection"];
      };
      keys.insert = {
        "C-[" = "normal_mode";
      };
      keys.select = {
        "C-[" = [ "normal_mode" "keep_primary_selection" "collapse_selection"];
      };
    };
  };  
}
