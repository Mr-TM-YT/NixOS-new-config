{ pkgs, config, ... }: {

  programs.vscode = {
    enable = true;
    package = pkgs.vscode;
    userSettings = {
      editor = {
        fontFamily = "JetBrains Mono";
        fontSize = 16;
        mouseWheelZoom = true;
        cursorSmoothCaretAnimation = "on";
        linkedEditing = true;
        wordWrap = "on";
        tabSize = 2;
        formatOnSave = true;
        minimap.enabled = false;
        lineNumbers = "relative";
      };
      workbench = {
        iconTheme = "vscode-icons";
        colorTheme = "Tokyo Night";

      };
      window.titleBarStyle = "custom";
      window.zoomLevel = 2;
      telemetry.telemetryLevel = "off";


      update.showReleaseNotes = false;
      zenMode.hideLineNumbers = false;
      zenMode.hideTabs = false;

      vim = {
        overrideCopy = false;
        easymotion = true;
        useSystemClipboard = true;
        leader = "<space>";

        hlsearch = true;

        normalModeKeyBindingsNonRecursive = [
          { before = [ "<S-h>" ]; commands = [ ":bprevious" ]; }
          { before = [ "<S-l>" ]; commands = [ ":bnext" ]; }

          { before = [ "leader" "v" ]; commands = [ ":vsplit" ]; }
          { before = [ "leader" "s" ]; commands = [ ":split" ]; }

          {
            before = [ "leader" "h" ];
            commands = [ "workbench.action.focusLeftGroup" ];
          }

          {
            before = [ "leader" "j" ];
            commands = [ "workbench.action.focusBelowGroup" ];
          }
          {
            before = [ "leader" "k" ];
            commands = [ "workbench.action.focusAboveGroup" ];
          }
          {
            before = [ "leader" "l" ];
            commands = [ "workbench.action.focusRightGroup" ];
          }
          { before = [ "leader" "w" ]; commands = [ ":w!" ]; }
          { before = [ "leader" "q" ]; commands = [ ":q!" ]; }
          { before = [ "leader" "x" ]; commands = [ ":x!" ]; }
          {
            before = [ "[" "d" ];
            commands = [ "editor.action.marker.prev" ];
          }
          {
            before = [ "]" "d" ];
            commands = [ "editor.action.marker.next" ];
          }
          {
            before = [ "<leader>" "c" "a" ];
            commands = [ "editor.action.quickFix" ];
          }
          { before = [ "leader" "f" ]; "commands" = [ "workbench.action.quickOpen" ]; }
          { before = [ "leader" "p" ]; "commands" = [ "editor.action.formatDocument" ]; }
          {
            before = [ "g" "h" ];
            commands = [ "editor.action.showDefinitionPreviewHover" ];
          }
        ];
        visualModeKeyBindings = [
          { "before" = [ "<" ]; "commands" = [ "editor.action.outdentLines" ]; }
          { "before" = [ ">" ]; "commands" = [ "editor.action.indentLines" ]; }
          { "before" = [ "J" ]; "commands" = [ "editor.action.moveLinesDownAction" ]; }
          { "before" = [ "K" ]; "commands" = [ "editor.action.moveLinesUpAction" ]; }
          { "before" = [ "leader" "c" ]; "commands" = [ "editor.action.commentLine" ]; }
        ];
      };

      nix.enableLanguageServer = true;
      "[html]"."editor.defaultFormatter" = "esbenp.prettier-vscode";
      "[css]"."editor.defaultFormatter" = "esbenp.prettier-vscode";
      "[javascript]"."editor.defaultFormatter" = "esbenp.prettier-vscode";
      "[typescriptreact]" = {
        "editor.defaultFormatter" = "esbenp.prettier-vscode";
      };
      "[typescript]" = {
        "editor.defaultFormatter" = "esbenp.prettier-vscode";
      };
      "[json]"."editor.defaultFormatter" = "esbenp.prettier-vscode";
      "[jsonc]" = {
        "editor.defaultFormatter" = "esbenp.prettier-vscode";
      };


    };

    keybindings = [
      {
        key = "ctrl+shift+a";
        command = "workbench.action.terminal.focusNext";
        when = "terminalFocus";
      }
      {
        key = "ctrl+shift+b";
        command = "workbench.action.terminal.focusPrevious";
        when = "terminalFocus";
      }
      {
        key = "ctrl+shift+j";
        command = "workbench.action.togglePanel";
      }
      {
        key = "ctrl+shift+n";
        command = "workbench.action.terminal.new";
        when = "terminalFocus";
      }
      {
        key = "ctrl+shift+w";
        command = "workbench.action.terminal.kill";
        when = "terminalFocus";
      }
      # FILE TREE
      {
        key = "ctrl+e";
        command = "workbench.action.toggleSidebarVisibility";
      }
      {
        key = "ctrl+e";
        command = "workbench.files.action.focusFilesExplorer";
        when = "editorTextFocus";
      }
      {
        key = "n";
        command = "explorer.newFile";
        when = "filesExplorerFocus && !inputFocus";
      }
      {
        key = "r";
        command = "renameFile";
        when = "filesExplorerFocus && !inputFocus";
      }
      {
        key = "shift+n";
        command = "explorer.newFolder";
        when = "explorerViewletFocus";
      }
      {
        key = "shift+n";
        command = "workbench.action.newWindow";
        when = "!explorerViewletFocus";
      }
      {
        key = "d";
        command = "deleteFile";
        when = "filesExplorerFocus && !inputFocus";
      }

      # EXTRA
      {
        key = "ctrl+shift+5";
        command = "editor.emmet.action.matchTag";
      }
      {
        key = "ctrl+z";
        command = "workbench.action.toggleZenMode";
      }
    ];
    extensions = with pkgs.vscode-extensions; [
      vscodevim.vim
      ritwickdey.liveserver
      jnoortheen.nix-ide
      vscode-icons-team.vscode-icons
      enkia.tokyo-night
      esbenp.prettier-vscode
    ] ++
    pkgs.vscode-utils.extensionsFromVscodeMarketplace [
      {
        name = "yuck";
        publisher = "eww-yuck";
        version = "0.0.3";
        sha256 = "sha256-DITgLedaO0Ifrttu+ZXkiaVA7Ua5RXc4jXQHPYLqrcM=";
      }

    ];
  };
}
