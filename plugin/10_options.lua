-- file preview, vertical right
vim.g.netrw_preview = 1
vim.g.netrw_alto = 0
-- vim.g.netrw_banner = 1
vim.g.netrw_liststyle = 3
vim.g.netrw_winsize = 30

vim.g.clipboard = 'xclip'
vim.o.mousemoveevent = true
vim.o.mouse = 'a'

vim.opt.scrolloff = 999
vim.opt.wrap = false
vim.opt.termguicolors = true

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.tabstop = 8
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = false

vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.breakindent = true

vim.opt.virtualedit = 'block'

vim.opt.ignorecase = true
vim.opt.smartcase = true

-- wait for mapped sequence
vim.opt.timeoutlen = 500

vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- preview effects incrementally
vim.opt.inccommand = 'split'

vim.opt.signcolumn = 'yes'
vim.opt.cursorline = true
vim.opt.colorcolumn = "75,80"
vim.opt.hlsearch = true
vim.opt.incsearch = true

-- reduce cursorhold time
vim.opt.swapfile = false
vim.opt.updatetime = 250

vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true


-- one status line for all windows
vim.opt.laststatus = 3

-- colorscheme
-- vim.cmd.colorscheme("solarized")
-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
