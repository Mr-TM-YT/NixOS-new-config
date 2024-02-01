{ ... }: {
  programs.helix = {
    enable = true;
    settings = {
      theme = "tokyonight_storm";
      editor = {
        line-number = "relative";
        bufferline = "multiple";
        lsp.display-messages = true;
        cursor-shape.insert = "bar";
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
<<<<<<< HEAD
=======
    languages = {
      language = [
        {
          name = "typescript";
          language-servers = [ "typescript-language-server" "tailwindcss-react" "eslint" "emmet-ls" "scls" "graphql" ];
          formatter = {
          command = "npx";
          args = ["prettier" "--parser" "typescript"];
          };
          indent = { tab-width = 2; unit = "\t"; };
          auto-format = true;
        }
        {
          name = "tsx";
          language-servers = [ "typescript-language-server" "tailwindcss-react" "eslint" "emmet-ls" "graphql"];
          formatter = { command = "npx"; args = ["prettier" "--parser" "typescript"]; };
          indent = { tab-width = 2; unit = "\t"; };
          auto-format = true;
        }
        {
          name = "jsx";
          language-servers = [ "typescript-language-server" "tailwindcss-react" "eslint" "emmet-ls" "graphql"];
          grammer = "javascript";
          formatter = { command = "npx"; args = ["prettier" "--parser" "typescript"]; };
          indent = { tab-width = 2; unit = "\t"; };
          auto-format = true;
        }
        {
          name = "javascript";
          language-servers = [ "typescript-language-server" "tailwindcss-react" "eslint" "emmet-ls" "graphql"];
          formatter = { command = "npx"; args = ["prettier" "--parser" "typescript"]; };
          indent = { tab-width = 2; unit = "\t"; };
          auto-format = true;
        }
        {
          name = "json";
          language-servers = [ "vscode-json-language-server"];
          formatter = { command = "npx"; args = ["prettier" "--parser" "typescript"]; };
          indent = { tab-width = 4; unit = "\t"; };
          auto-format = true;
        }
      ];
    };
>>>>>>> 4e56933 (Improved vscodium.nix)
  };
}
