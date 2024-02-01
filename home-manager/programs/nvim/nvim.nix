{ pkgs, ...}: {
<<<<<<< HEAD
  programs.neovim = 
=======
  programs.neovim =
>>>>>>> 4e56933 (Improved vscodium.nix)
  let
    toLua = str: "lua << EOF\n${str}\nEOF\n";
  in
  {
    enable = true;
    viAlias = true;
<<<<<<< HEAD
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
=======
    vimAlias = true; vimdiffAlias = true;

    extraPackages = with pkgs; [
      fzf
      fd
      ripgrep
      stylua
      luajit
      luajitPackages.lua-lsp
    ];

    plugins = with pkgs.vimPlugins; [

      # File Explorer
			nvim-tree-lua


      # A Cool Color Picker
      {
        plugin = ccc-nvim;
        config = toLua "require('ccc').setup({})";
      }

      {
        plugin = which-key-nvim;
        config = toLua "require('which-key').setup()";
      }
>>>>>>> 4e56933 (Improved vscodium.nix)
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

<<<<<<< HEAD
=======
      # For formatting
      formatter-nvim
>>>>>>> 4e56933 (Improved vscodium.nix)

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
<<<<<<< HEAD
=======
        p.tree-sitter-cpp
        p.tree-sitter-c
>>>>>>> 4e56933 (Improved vscodium.nix)
        p.tree-sitter-lua
        p.tree-sitter-javascript
        p.tree-sitter-typescript
        p.tree-sitter-html
        p.tree-sitter-css
        p.tree-sitter-json
        p.tree-sitter-markdown
        p.tree-sitter-make
        p.tree-sitter-vimdoc
      ]))
<<<<<<< HEAD
      
=======

>>>>>>> 4e56933 (Improved vscodium.nix)
      # Git stuff
      vim-fugitive

      vim-nix
<<<<<<< HEAD
=======

      # For taking notes
      neorg
>>>>>>> 4e56933 (Improved vscodium.nix)
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
<<<<<<< HEAD
=======
      ${builtins.readFile ./plugins/formatter.lua}
      ${builtins.readFile ./plugins/neorg.lua}
>>>>>>> 4e56933 (Improved vscodium.nix)
      vim.keymap.set('n', '<leader>gs', vim.cmd.Git)
    '';
  };
}
