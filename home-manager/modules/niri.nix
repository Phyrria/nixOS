{
  programs.niri.settings =
  {
    # layout
    layout = {
      gaps = 5;

      default-column-width.proportion = 1.0;

      focus-ring.width = 2;

      preset-column-widths = {
        proportion = 0.33333;
        proportion = 0.5;
        proportion = 0.66667;
      };
      
    };
    
    # keybinds
    binds = {
      # Appls
      "Mod+T".action.spawn = "kitty";
      "Mod+D".action.spawn = "fuzzel";
      "Super+Alt+L".action.spawn = "swaylock";

      # Window Actions
      "Mod+Q".action.close-window = [];
      "Mod+O".action.toggle-overview = [];
      
      "Mod+Left".action.focus-column-left = [];
      "Mod+Right".action.focus-column-right = [];
      "Mod+Up".action.focus-window-up = [];
      "Mod+Down".action.focus-window-down = [];
      
      "Mod+H".action.focus-column-left = [];
      "Mod+L".action.focus-column-right = [];
      "Mod+K".action.focus-window-up = [];
      "Mod+J".action.focus-window-up = [];

      "Mod+Ctrl+Left".action.move-column-left = [];
      "Mod+Ctrl+Right".action.move-column-right = [];
      "Mod+Ctrl+Up".action.move-window-up = [];
      "Mod+Ctrl+Down".action.move-window-down = [];

      "Mod+Ctrl+H".action.move-column-left = [];
      "Mod+Ctrl+L".action.move-column-right = [];
      "Mod+Ctrl+K".action.move-window-up = [];
      "Mod+Ctrl+J".action.move-window-down = [];

      "Mod+Home".action.focus-column-to-first = [];
      "Mod+End".action.focus-column-to-last = [];

      "Mod+Ctrl+Home".action.move-column-to-first = [];
      "Mod+Ctrl+End".action.move-column-to-last = [];

      "Mod+Minus".action.set-column-width = ["-10%"];
      "Mod+Equal".action.set-column-width = ["++10%"];

      "Mod+Shift+E".action.quit = [];
      "Mod+R".action.switch-preset-column-width = [];
      
      # Audio
      "XF86AudioRaiseVolume".action.spawn-sh = "wpctl" set-volume @DEFAULT_AUDIO_SINK@ "0.1+";
      "XF86AudioRaiseVolume".allow-when-locked = true;
      "XF86AudioLowerVolume".action.spawn = ["wpctl" "set-volume" "@DEFAULT_AUDIO_SINK@" "0.1-"];
      "XF86AudioLowerVolume".allow-when-locked = true;
      "XF86AudioMute".action.spawn = ["wpctl" "set-mute" "@DEFAULT_AUDIO_SINK@" "toggle"];
      "XF86AudioMute".allow-when-locked = true;
      "XF86AudioMicMute".action.spawn = ["wpctl" "set-mute" "@DEFAULT_AUDIO_SOURCE@" "toggle"];
      "XF86AudioMicMute".allow-when-locked = true;

      # Brightness
      "XFMonBrightnessUp".action.spawn = ["brightnessctl" "--class=backlight" "set" "+10%"];
      "XFMonBrightnessUp".allow-when-locked = true;
      "XFMonBrightnessDown".action.spawn = ["brightnessctl" "--class=blacklight" "set" "-10%"];
      "XFMonBrightnessDown".allow-when-locked = true;

      
    };
  };
}
