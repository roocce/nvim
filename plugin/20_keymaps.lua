vim.g.mapleader = ' '
vim.keymap.set('n', 'U', vim.cmd.redo)
vim.keymap.set('i', '<C-c>', '<Esc>')
vim.keymap.set('n', '<C-u>', '<C-u>zz')
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<leader>cn', vim.cmd.cnext)
vim.keymap.set('n', '<leader>cp', vim.cmd.cprevious)
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

function toggleBackground()
    if vim.o.background == 'light' then
        vim.o.background = 'dark'
    elseif vim.o.background == 'dark' then
        vim.o.background = 'light'
    end
end
function lightBackground()
    vim.o.background = 'light'
end
function darkBackground()
    vim.o.background = 'dark'
end

-- vim.api.nvim_create_autocmd("OptionSet", {
--   pattern = "background",
--   callback = function()
--     vim.notify(debug.traceback("background changed to: " .. vim.o.background, 2), vim.log.levels.WARN)
--   end
-- })

vim.keymap.set('n', '<leader>ss', toggleBackground, { desc = 'Toggle background light/dark'})
vim.keymap.set('n', '<leader>sl', lightBackground, { desc = 'Light background' })
vim.keymap.set('n', '<leader>sd', darkBackground, { desc = 'Dark background' })

vim.keymap.set('n', '<C-h>', '<C-w>h', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w>l', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w>j', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w>k', { desc = 'Move focus to the upper window' })

vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { desc = 'LSP go to definition'})
vim.keymap.set('n', '<F3>', vim.lsp.buf.format, { desc = 'LSP format'})
-- Use CTRL-space to trigger LSP completion.
-- Use CTRL-Y to select an item. |complete_CTRL-Y|
-- vim.keymap.set('i', '<S-Tab>', function()
--   vim.lsp.completion.get()
-- end)
--
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex, { desc = 'Netrw Directory Listing'})
vim.keymap.set('n', '<leader>pp', function() require('mini.files').open() end, { desc = 'Open file browser'})
vim.keymap.set('n', '<leader>pf', '<cmd>Pick files<cr>', { desc = 'Pick files'})
vim.keymap.set('n', '<leader>pg', '<cmd>Pick grep_live<cr>', { desc = 'Pick grep_live'})
vim.keymap.set('n', '<leader>pb', '<cmd>Pick buffers<cr>', { desc = 'Pick buffers'})
vim.keymap.set('n', '<leader>ph', '<cmd>Pick help<cr>', { desc = 'Pick help'})
vim.keymap.set('n', '<Leader>dd', function() require('mini.bufremove').delete() end, { desc = 'Buffer delete' })
vim.keymap.set('n', '<F5>', function() require'dap'.continue() end, { desc = 'Launch debug sessions and resume execution' })
vim.keymap.set('n', '<F10>', function() require'dap'.step_over() end, { desc = 'Step over' })
vim.keymap.set('n', '<F9>', function() require'dap'.step_into() end, { desc = 'Step into function' })
vim.keymap.set('n', '<F8>', function() require'dap'.step_out() end, { desc = 'Step out of function' })
vim.keymap.set('n', '<F7>', function() require'dap'.step_back() end, { desc = 'Step back' })
vim.keymap.set('n', '<Leader>b', function() require'dap'.toggle_breakpoint() end, { desc = 'Toggle breakpoint' })
vim.keymap.set('n', '<Leader>bc', function() require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '), nil, nil) end, { desc = 'Set conditional breakpoint' })
vim.keymap.set('n', '<Leader>lp', function() require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: ')) end, { desc = 'Set log point' })
vim.keymap.set('n', '<Leader>ro', function() require'dap'.repl.open() end, { desc = 'Inspect the state via the built-in REPL' })

vim.keymap.set('n', '<leader>dt', function() require'dapui'.toggle() end, { desc = 'Toggle Debugger UI' })
vim.keymap.set('n', '<leader>dc', function() require'dapui'.float_element('console', { width = 640, height = 480, enter = true }) end, { desc = 'Open a floating console' })
vim.keymap.set('n', '<leader>dh', function() require'dapui'.float_element('breakpoints', { width = 640, height = 480, enter = true }) end, { desc = 'Open a floating breakpoints' })
vim.keymap.set('n', '<leader>dl', function() require'dapui'.float_element('stacks', { width = 640, height = 480, enter = true }) end, { desc = 'Open a floating stacks' })
vim.keymap.set('n', '<leader>dg', function() require'dapui'.float_element('repl', { width = 640, height = 480, enter = true }) end, { desc = 'Open a floating REPL' })

vim.keymap.set('n', '<Leader>tc', function() require('dap-python').test_class() end, {desc = 'Test Class'})
vim.keymap.set('n', '<Leader>tm', function() require('dap-python').test_method() end, {desc = 'Test Method'})

vim.keymap.set('n', 'K', function() require('hover').hover() end, { desc = 'hover.nvim'})
vim.keymap.set('n', 'gK', function() require('hover').hover_select() end, { desc = 'hover.nvim (select)'})
vim.keymap.set('n', '<C-p>', function() require('hover').hover_switch('previous') end, {desc = 'hover.nvim (previous source)'})
vim.keymap.set('n', '<C-n>', function() require('hover').hover_switch('next') end, {desc = 'hover.nvim (next source)'})

-- Mouse support
vim.keymap.set('n', '<MouseMove>', function() require('hover').hover_mouse() end, { desc = 'hover.nvim (mouse)' })
vim.o.mousemoveevent = true

vim.keymap.set('n', '<leader>xx', '<cmd>Trouble diagnostics toggle<cr>', { desc = 'Diagnostics (Trouble)' })
vim.keymap.set('n', '<leader>xX', '<cmd>Trouble diagnostics toggle filter.buf=0<cr>', { desc = 'Buffer Diagnostics (Trouble)' })
vim.keymap.set('n', '<leader>cs', '<cmd>Trouble symbols toggle focus=false<cr>', { desc = 'Symbols (Trouble)' })
vim.keymap.set('n', '<leader>cl', '<cmd>Trouble lsp toggle focus=false win.position=right<cr>', { desc = 'LSP Definitions / references / ... (Trouble)' })
vim.keymap.set('n', '<leader>xL', '<cmd>Trouble loclist toggle<cr>', { desc = 'Location List (Trouble)' })
vim.keymap.set('n', '<leader>xQ', '<cmd>Trouble qflist toggle<cr>', { desc = 'Quickfix List (Trouble)' })

vim.keymap.set('n', '<leader>td', '<cmd>Gitsigns toggle_deleted<cr>', { desc = 'Gitsigns toggle deleted' })
vim.keymap.set('n', '<leader>tw', '<cmd>Gitsigns toggle_word_diff<cr>', { desc = 'Gitsigns toggle word diff' })
vim.keymap.set('n', '<leader>tt', '<cmd>Gitsigns toggle_linehl<cr><cmd>Gitsigns toggle_numhl<cr><cmd>Gitsigns toggle_signs<cr>', { desc = 'Gitsigns toggle signs' })
