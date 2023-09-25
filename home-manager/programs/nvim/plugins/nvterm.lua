require('nvterm').setup()


local term = require('nvterm.terminal')

vim.keymap.set('n', '<leader>tt', function() term.toggle('horizontal') end, {});
