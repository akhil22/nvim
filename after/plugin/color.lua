function ColorMyPencils(color)
	-- color = color or "rose-pine" 
	color = color or "codedark" 
	vim.cmd.colorscheme(color)
   -- vim.g.codedark_transparent = 1

	-- vim.api.nvim_set_hl(0, "Normal", {bg = "none"})
	vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none"})
end

ColorMyPencils()
