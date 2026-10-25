-- Loaded after the bundled indent/php.vim, which sets indentexpr=GetPhpIndent()
-- and locally disables autoindent/cindent/smartindent. The legacy GetPhpIndent
-- state machine fails to arm under this config (returns -1 => every new line
-- starts at column 0), so replace it with plain cindent.
vim.bo.indentexpr = ''
vim.bo.cindent = true
