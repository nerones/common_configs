vim.lsp.config("ts_ls", {
	init_options = { hostInfo = "neovim", preferences = { importModuleSpecifierPreference = "relative" } },
})

vim.keymap.set(
	"n",
	"grs",
	"<cmd>LspTypescriptSourceAction<CR>",
	{ buffer = bufnr, desc = "LSP Source Action (TypeScript)" }
)
return {}
