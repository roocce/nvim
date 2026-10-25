vim.pack.add({
    'https://github.com/nvim-mini/mini.nvim',
})

local starter = require('mini.starter')
starter.setup({
    items = {
	starter.sections.recent_files(nil, true, false),
	starter.sections.builtin_actions()
    }
})

require('mini.notify').setup()
require('mini.icons').setup()
require('mini.tabline').setup()

-- now(function ()
-- 	local MiniStatusline = require('mini.statusline')
--
-- 	MiniStatusline.setup({
-- 		content = {
-- 			active = function ()
-- 				local mode, mode_hl = MiniStatusline.section_mode({ trunc_width = 120 })
-- 				local git = MiniStatusline.section_git({ trunc_width = 40 })
-- 				local diff = MiniStatusline.section_diff({ trunc_width = 75 })
-- 				local diagnostics = MiniStatusline.section_diagnostics({
-- 					icon = '',
-- 					signs = { ERROR = ' ', WARN = ' ', INFO = ' ', HINT = '󰅏 ' },
-- 					trunc_width = 75
-- 				})
-- 				local lsp = MiniStatusline.section_lsp({ trunc_width = 75 })
-- 				local filename = MiniStatusline.section_filename({ trunc_width = 140 })
-- 				local fileinfo = MiniStatusline.section_fileinfo({ trunc_width = 120 })
-- 				local location = MiniStatusline.section_location({ trunc_width = 75 })
-- 				local search = MiniStatusline.section_searchcount({ trunc_width = 75 })
-- 				return MiniStatusline.combine_groups({
-- 					{ hl = mode_hl, strings = { mode } },
-- 					{ hl = 'MiniStatuslineDevinfo', strings = { git, diff, diagnostics, lsp } },
-- 					'%<', -- Mark general truncate point
-- 					{ hl = 'MiniStatuslineFilename', strings = { filename } },
-- 					'%=', -- End left alignment
-- 					{ hl = 'MiniStatuslineFileinfo', strings = { fileinfo } },
-- 					{ hl = mode_hl, strings = { search, location } }
-- 				})
-- 			end
-- 		}
-- 	})
-- end)
-- now(function ()
-- 	local hipatterns = require('mini.hipatterns')
-- 	hipatterns.setup({
-- 		highlighters = {
-- 			hex_color = hipatterns.gen_highlighter.hex_color()
-- 		}
-- 	})
-- end)

-- Safely execute later
-- later(function() require('mini.ai').setup() end)
-- later(function() require('mini.comment').setup() end)
-- later(function()
--     require('mini.pick').setup({
-- 	mappings = { choose_marked = '<C-q>'}
--     })
--     vim.cmd('highlight! link MiniPickMatchCurrent StatusLine')
-- end)
-- later(function() require('mini.pairs').setup() end)
-- later(function() require('mini.surround').setup() end)
--
-- later(function()
--     add({ source = 'rafamadriz/friendly-snippets' })
--     local gen_loader = require('mini.snippets').gen_loader
--
--     local htmldjango_patterns = {'frameworks/djangohtml.json', 'html.json'}
--     local lang_patterns = {
-- 	htmldjango = htmldjango_patterns
--     }
--     require('mini.snippets').setup({
-- 	snippets = {
-- 	    gen_loader.from_lang({ lang_patterns = lang_patterns })
-- 	}
--     })
-- end)
--
-- later(function() require('mini.completion').setup() end)
-- later(function() require('mini.bufremove').setup() end)
-- later(function() require('mini.files').setup() end)
-- later(function() require('mini.move').setup() end)
--

-- later(function ()
-- 	local miniclue = require('mini.clue')
-- 	miniclue.setup({
-- 		triggers = {
-- 			-- Leader triggers
-- 			{ mode = { 'n', 'x' }, keys = '<Leader>' },
-- 			-- `[` and `]` keys
-- 			{ mode = 'n', keys = '[' },
-- 			{ mode = 'n', keys = ']' },
-- 			-- Built-in completion
-- 			{ mode = 'i', keys = '<C-x>' },
-- 			-- `g` key
-- 			{ mode = { 'n', 'x' }, keys = 'g' },
-- 			-- Marks
-- 			{ mode = { 'n', 'x' }, keys = "'" },
-- 			{ mode = { 'n', 'x' }, keys = '`' },
-- 			-- Registers
-- 			{ mode = { 'n', 'x' }, keys = '"' },
-- 			{ mode = { 'i', 'c' }, keys = '<C-r>' },
-- 			-- Window commands
-- 			{ mode = 'n', keys = '<C-w>' },
-- 			-- `z` key
-- 			{ mode = { 'n', 'x' }, keys = 'z' }
-- 		},
-- 		clues = {
-- 			-- Enhance this by adding descriptions for <Leader> mapping groups
-- 			miniclue.gen_clues.square_brackets(),
-- 			miniclue.gen_clues.builtin_completion(),
-- 			miniclue.gen_clues.g(),
-- 			miniclue.gen_clues.marks(),
-- 			miniclue.gen_clues.registers(),
-- 			miniclue.gen_clues.windows(),
-- 			miniclue.gen_clues.z()
-- 		}
-- 	})
-- end)
