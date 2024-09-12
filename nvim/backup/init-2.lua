--[[
-- Setup initial configuration,
-- 
-- Primarily just download and execute lazy.nvim
--]]
require("einstein")
vim.g.mapleader = " "

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.uv.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end

-- Add lazy to the `runtimepath`, this allows us to `require` it.
---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

-- Set up lazy, and load my `lua/custom/plugins/` folder
require("lazy").setup({ import = "custom/plugins" }, {
	change_detection = {
		notify = false,
	},
})

require("colorizer").setup()
vim.cmd.colorscheme("kanagawa-wave")
vim.api.nvim_create_autocmd("ColorScheme", {
	pattern = "kanagawa",
	callback = function()
		if vim.o.background == "light" then
			vim.fn.system("kitty +kitten themes Kanagawa_light")
		elseif vim.o.background == "dark" then
			vim.fn.system("kitty +kitten themes Kanagawa_dragon")
		else
			vim.fn.system("kitty +kitten themes Kanagawa")
		end
	end,
})

vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Show diagnostic [E]rror messages" })
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })
vim.opt.colorcolumn = ""

vim.api.nvim_set_hl(0, "StatusLine", { fg = "NONE", bg = "NONE" })
