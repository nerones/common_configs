vim.lsp.config("htmx", {
	filetypes = { "htmx" },
})

-- due to the way that the lspconfig loads the configs to overwrite we need to
-- call vim.lsp.config to overwrite the default filetypes
return {}
