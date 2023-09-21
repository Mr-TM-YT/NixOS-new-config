  local function my_on_attach(bufnr)
    local api = require "nvim-tree.api"

    -- default mappings
    api.config.mappings.default_on_attach(bufnr)

    -- custom mappings
    vim.keymap.set('n', '<leader>ex', api.tree.toggle)
    vim.keymap.set('n', '<leader>fex', api.tree.focus);
  end

  -- pass to setup along with your other options
  require("nvim-tree").setup {
    ---
    on_attach = my_on_attach,
    ---
  }
