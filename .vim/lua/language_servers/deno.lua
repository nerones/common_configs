local root_pattern = require("lspconfig").util.root_pattern

-- require("lspconfig").denols.setup({
-- 	filetypes = {},
-- 	root_dir = root_pattern("deno.json", "deno.jsonc", "denon.json"),
-- 	single_file_support = false,
-- 	enable = false,
-- })

vim.lsp.config("denols", {
	root_dir = root_pattern("deno.json", "deno.jsonc", "denon.json"),
})
