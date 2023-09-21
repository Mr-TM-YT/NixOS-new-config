{ pkgs, ...}: {
  programs.neovim = 
  let
    toLua = str: "lua << EOF\n${str}\nEOF\n";
    toLuaFile = file: "lua << EOF\n${builtins.readFile file}\nEOF\n";
  in
  {
    enable = true;
    viAlias = true;
    vimAlias = true;
    vimdiffAlias = true;

    extraPackages = with pkgs; [
      luajitPackages.lua-lsp
      wl-clipboard
    ];

    plugins = with pkgs.vimPlugins; [
      
      # File Explorer
      {
        plugin = nvim-tree-lua;
        config = toLuaFile ./plugins/nvim-tree.lua;
      }
      {
        plugin = which-key-nvim;
        config = toLua "require('which-key').setup()";
      }      
      {
        plugin = gitsigns-nvim;
        config = toLua "require('gitsigns').setup()";
      }

      {
        plugin = dashboard-nvim;
        config = toLua "require('dashboard').setup()";
      }

      # Terminal Emulator
      {
        plugin = nvterm;
        config = toLuaFile ./plugins/nvterm.lua;
      }
      
      # For adding intdentation guides
      # {
      #   plugin = indent-blankline-nvim;
      #   config = toLua "require('indent_blankline').setup({})";
      # }
      

      # Auto Pairs
      auto-pairs
      
      {
        plugin = nvim-lspconfig;
        config = toLuaFile ./plugins/lsp.lua;
      }

      {
        plugin = comment-nvim;
        config = toLua "require('Comment').setup()";
      }

      {
        plugin = tokyonight-nvim;
        config = "colorscheme tokyonight-storm";
      }

      neodev-nvim

      nvim-cmp 
      {
        plugin = nvim-cmp;
        config = toLuaFile ./plugins/cmp.lua;
      }

      {
        plugin = telescope-nvim;
        config = toLuaFile ./plugins/telescope.lua;
      }

      telescope-fzf-native-nvim

      cmp_luasnip
      cmp-nvim-lsp

      luasnip
      friendly-snippets

      {
        plugin = lualine-nvim;
        config = toLuaFile ./plugins/lualine.lua;
      }
      nvim-web-devicons

      {
        plugin = (nvim-treesitter.withPlugins (p: [
          p.tree-sitter-nix
          p.tree-sitter-vim
          p.tree-sitter-bash
          p.tree-sitter-lua
          p.tree-sitter-javascript
          p.tree-sitter-typescript
          p.tree-sitter-html
          p.tree-sitter-css
          p.tree-sitter-json
          p.tree-sitter-markdown
        ]));
        config = toLuaFile ./plugins/treesitter.lua;
      }

      vim-nix
      
    ];

    extraLuaConfig = ''
      ${builtins.readFile ./options.lua}
    '';
  };
}
