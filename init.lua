if vim.g.neovide then
	-- UI & Fonts
	vim.opt.linespace = 2;
	vim.o.guifont = "FiraCode Nerd Font Mono:h14"

	-- Less distractions while typing
	vim.g.neovide_hide_mouse_when_typing = true
	vim.g.neovide_cursor_animate_in_insert_mode = false

  vim.g.neovide_fullscreen = true
  vim.g.neovide_remember_window_size = false
end


vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.tabstop=2
vim.opt.shiftwidth=2
vim.opt.softtabstop=2
vim.opt.autoindent=true
vim.opt.backspace='indent,eol,start'
