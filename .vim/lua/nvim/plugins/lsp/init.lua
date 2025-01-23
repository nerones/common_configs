-- require all language server modules
require("language_servers.typescript")
require("language_servers.eslint")
require("language_servers.biome")
require("language_servers.vue")
require("language_servers.css")
require("language_servers.html")
require("language_servers.luals")
require("language_servers.python")
require("language_servers.json")
require("language_servers.tailwind")
require("language_servers.yaml")
require("language_servers.prisma")
require("language_servers.emmet")
require("language_servers.gql")
require("language_servers.rust")
require("language_servers.go")
require("language_servers.deno")
require("language_servers.astro")
require("language_servers.java")
require("language_servers.markdown")
require("language_servers.bash")
require("language_servers.php")
require("language_servers.htmx")

-- rounded border on :LspInfo
require("lspconfig.ui.windows").default_options.border = "rounded"

vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
	border = "rounded",
})

vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, {
	border = "rounded",
})

local opts = { noremap = true, silent = true }
vim.api.nvim_set_keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
