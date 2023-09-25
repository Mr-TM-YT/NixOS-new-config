{ pkgs, ...}: {
  programs.neovim = 
  let
    toLua = str: "lua << EOF\n${str}\nEOF\n";
  in
  {
    enable = true;
    viAlias = true;
    vimAlias = true;
    vimdiffAlias = true;

    extraPackages = with pkgs; [
      luajitPackages.lua-lsp
      fzf
      fd
      ripgrep
      luajit
    ];

    plugins = with pkgs.vimPlugins; [
      
      # File Explorer
			nvim-tree-lua
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
      nvterm

      # For adding intdentation guides
      # {
      #   plugin = indent-blankline-nvim;
      #   config = toLua "require('indent_blankline').setup({})";
      # }


      auto-pairs

      nvim-lspconfig

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

      telescope-nvim
      telescope-fzf-native-nvim

      cmp_luasnip
      cmp-nvim-lsp
      luasnip
      friendly-snippets

      lualine-nvim
      nvim-web-devicons

      (nvim-treesitter.withPlugins (p: [
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
        p.tree-sitter-make
      ]))
      
      # Git stuff
      vim-fugitive

      vim-nix
    ];

    extraLuaConfig = ''
      ${builtins.readFile ./options.lua}
      ${builtins.readFile ./plugins/telescope.lua}
      ${builtins.readFile ./plugins/nvim-tree.lua}
      ${builtins.readFile ./plugins/treesitter.lua}
      ${builtins.readFile ./plugins/lualine.lua}
      ${builtins.readFile ./plugins/lsp.lua}
      ${builtins.readFile ./plugins/cmp.lua}
      ${builtins.readFile ./plugins/nvterm.lua}
      vim.keymap.set('n', '<leader>gs', vim.cmd.Git)
    '';
  };
}
