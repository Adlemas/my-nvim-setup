local setup, nvimtree = pcall(require, "nvim-tree")
if not setup then
	return
end

local fzf_status, fzf = pcall(require, "fzf-lua")
if fzf_status then
	print("fzf lua installed")
end

-- recommended settings from nvim-tree documentation
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

vim.cmd([[ highlight NvimTreeIndentMarker guifg=#3FC5FF ]])

vim.g.nvim_tree_show_icons = {
	git = 1,
	folders = 1,
	files = 1,
	folder_arrows = 1,
}

nvimtree.setup({
	actions = {
		open_file = {
			window_picker = {
				enable = false,
			},
		},
	},
	filters = {
		dotfiles = true,
	},
})
