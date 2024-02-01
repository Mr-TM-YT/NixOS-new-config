{ cofig, inputs, pkgs, ... }: {
  programs.wezterm = {
    enable = true;
    enableZshIntegration = true;

    extraConfig = ''
    return {
      color_scheme = "Tokyo Night",
      font = wezterm.font_with_fallback {
        { family = "JetBrains Mono", weight = "DemiBold" },
        "Kawkab Mono"
      },
      font_size = 14.0,
      enable_wayland = false,
      use_fancy_tab_bar = true,
      hide_tab_bar_if_only_one_tab = true,
      bidi_enabled = true,
      bidi_direction = "AutoLeftToRight",

      -- Deal with the window padding
      window_padding = {
        left = 0,
        right = 0,
        top = 0,
        bottom = 0,
      },

      window_background_opacity = 0.9,
    }
    '';
  };
}
