if vim.g.neovide then
	vim.g.neovide_input_use_logo = 1

	-- UI & Fonts
	vim.opt.linespace = 2;
	vim.o.guifont = "FiraCode Nerd Font Mono:h14"

	-- Less distractions while typing
	vim.g.neovide_hide_mouse_when_typing = true
	vim.g.neovide_cursor_animate_in_insert_mode = false
end
