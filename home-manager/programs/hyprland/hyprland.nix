{ ... }: {
  wayland.windowManager.hyprland.extraConfig = ''
      monitor=,preferred,auto,auto


    # See https://wiki.hyprland.org/Configuring/Keywords/ for more

    # Execute your favorite apps at launch
    # exec-once = waybar & hyprpaper & firefox

    # Source a file (multi-file configs)
    # source = ~/.config/hypr/myColors.conf

    # Some default env vars.
    env = XCURSOR_SIZE,24

    # For all categories, see https://wiki.hyprland.org/Configuring/Variables/
    input {
      kb_layout = us,ara
      kb_variant =
        kb_model =
          kb_options = grp:win_space_toggle
          kb_rules =

            follow_mouse = 1

            touchpad {
              natural_scroll = no
            }

            sensitivity = 0 # -1.0 - 1.0, 0 means no modification.
          }

          general {
        # See https://wiki.hyprland.org/Configuring/Variables/ for more

        gaps_in = 7
        gaps_out = 15
        border_size = 2
        col.active_border = rgba(33ccffee) rgba(00ff99ee) 45deg
        col.inactive_border = rgba(595959aa)

        layout = dwindle
      }

      decoration {
        # See https://wiki.hyprland.org/Configuring/Variables/ for more

        rounding = 10
        blur {
          enabled = true
          size = 4
          passes = 3
          ignore_opacity = true
          new_optimizations = true
          xray = true
          noise = 0.05
        }
        active_opacity = 0.7
        inactive_opacity = 0.6
        drop_shadow = yes
        shadow_range = 10
        shadow_render_power = 5
        col.shadow = rgba(1a1a1aee)
      }

    # Blur extra surfaces
    layerrule = blur,gtk-layer-shell
    layerrule = blur,rofi
    layerrule = ignorezero,rofi

    animations {
      enabled = yes

        # Some default animations, see https://wiki.hyprland.org/Configuring/Animations/ for more

        #bezier = myBezier, 0.05, 0.9, 0.1, 1.05

        #animation = windows, 1, 7, myBezier
        #animation = windowsOut, 1, 7, default, popin 80%
        #animation = border, 1, 10, default
        #animation = borderangle, 1, 8, default
        #animation = fade, 1, 7, default
        #animation = workspaces, 1, 6, default

        # bezier = myBezier, 0.10, 0.9, 0.1, 1.05

        # animation = windows, 1, 7, myBezier, slide
        # animation = windowsOut, 1, 7, myBezier, slide
        # animation = border, 1, 10, default
        # animation = fade, 1, 7, default
        # animation = workspaces, 1, 6, default

        bezier = md3_decel, 0.05, 0.7, 0.1, 1
        bezier = md3_accel, 0.3, 0, 0.8, 0.15
        bezier = overshot, 0.05, 0.9, 0.1, 1.1
        bezier = crazyshot, 0.1, 1.5, 0.76, 0.92 
        bezier = hyprnostretch, 0.05, 0.9, 0.1, 1.0
        bezier = fluent_decel, 0.1, 1, 0, 1
        bezier = easeInOutCirc, 0.85, 0, 0.15, 1
        bezier = easeOutCirc, 0, 0.55, 0.45, 1
        bezier = easeOutExpo, 0.16, 1, 0.3, 1
        # Animation configs
        animation = windows, 1, 3, md3_decel, popin 60%
        animation = border, 1, 10, default
        animation = fade, 1, 2.5, md3_decel
        # animation = workspaces, 1, 3.5, md3_decel, slide
        animation = workspaces, 1, 3.5, easeOutExpo, slide
        # animation = workspaces, 1, 7, fluent_decel, slidefade 15%
        # animation = specialWorkspace, 1, 3, md3_decel, slidefadevert 15%
        animation = specialWorkspace, 1, 3, md3_decel, slidevert
      }

      dwindle {
        # See https://wiki.hyprland.org/Configuring/Dwindle-Layout/ for more
        pseudotile = yes # master switch for pseudotiling. Enabling is bound to mainMod + P in the keybinds section below
        preserve_split = yes # you probably want this
      }

      master {
        # See https://wiki.hyprland.org/Configuring/Master-Layout/ for more
        new_is_master = true
      }

      gestures {
        # See https://wiki.hyprland.org/Configuring/Variables/ for more
        workspace_swipe = off
      }

    # Example per-device config
    # See https://wiki.hyprland.org/Configuring/Keywords/#executing for more
    device:epic-mouse-v1 {
      sensitivity = -0.5
    }

    # Example windowrule v1
    # windowrule = float, ^(kitty)$
    # Example windowrule v2
    # windowrulev2 = float,class:^(kitty)$,title:^(kitty)$
    # See https://wiki.hyprland.org/Configuring/Window-Rules/ for more


    # See https://wiki.hyprland.org/Configuring/Keywords/ for more
    $mainMod = SUPER

    # Example binds, see https://wiki.hyprland.org/Configuring/Binds/ for more
    bind = $mainMod, T, exec, wezterm
    bind = $mainMod, C, killactive,
    bind = $mainMod, M, exit,
    bind = $mainMod, E, exec, thunar
    bind = $mainMod, V, togglefloating,
    bind = $mainMod, R, exec, rofi -show drun -show-icons
    bind = $mainMod, P, pseudo, # dwindle
    bind = $mainMod, J, togglesplit, # dwindle

    # Move focus with mainMod + arrow keys
    bind = $mainMod, left, movefocus, l
    bind = $mainMod, right, movefocus, r
    bind = $mainMod, up, movefocus, u
    bind = $mainMod, down, movefocus, d

    # Switch workspaces with mainMod + [0-9]
    bind = $mainMod, 1, workspace, 1
    bind = $mainMod, 2, workspace, 2
    bind = $mainMod, 3, workspace, 3
    bind = $mainMod, 4, workspace, 4
    bind = $mainMod, 5, workspace, 5
    bind = $mainMod, 6, workspace, 6
    bind = $mainMod, 7, workspace, 7
    bind = $mainMod, 8, workspace, 8
    bind = $mainMod, 9, workspace, 9
    bind = $mainMod, 0, workspace, 10

    # Move active window to a workspace with mainMod + SHIFT + [0-9]
    bind = $mainMod SHIFT, 1, movetoworkspace, 1
    bind = $mainMod SHIFT, 2, movetoworkspace, 2
    bind = $mainMod SHIFT, 3, movetoworkspace, 3
    bind = $mainMod SHIFT, 4, movetoworkspace, 4
    bind = $mainMod SHIFT, 5, movetoworkspace, 5
    bind = $mainMod SHIFT, 6, movetoworkspace, 6
    bind = $mainMod SHIFT, 7, movetoworkspace, 7
    bind = $mainMod SHIFT, 8, movetoworkspace, 8
    bind = $mainMod SHIFT, 9, movetoworkspace, 9
    bind = $mainMod SHIFT, 0, movetoworkspace, 10

    # Scroll through existing workspaces with mainMod + scroll
    bind = $mainMod, mouse_down, workspace, e+1
    bind = $mainMod, mouse_up, workspace, e-1

    # Move/resize windows with mainMod + LMB/RMB and dragging
    bindm = $mainMod, mouse:272, movewindow
    bindm = $mainMod, mouse:273, resizewindow

    # Some binds I like!

    bind = $mainMod, F, fullscreen,

    bind = , xf86audioraisevolume, exec, pactl set-sink-volume @DEFAULT_SINK@ +5%
    bind = , xf86audiolowervolume, exec, pactl set-sink-volume @DEFAULT_SINK@ -5%

    bind = $mainMod ALT, S, exec, grim -g "$(slurp)"
    bind = $mainMod SHIFT, B, exec, firefox
    bind = $mainMod SHIFT, D, exec, discord
    bind = $mainMod SHIFT, C, exec, code 

    # Startup apps
    exec-once = mpvpaper -o "no-audio loop" "*" ~/Wallpapers/bg.mp4 &
    exec-once =  nm-applet --indicator & waybar & swaync & udiskie &
  '';
}
