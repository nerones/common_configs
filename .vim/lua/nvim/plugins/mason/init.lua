require("mason").setup({
	ui = {
		border = "rounded",
	},
})
local registry = require("mason-registry")

-- auto install formatters
for _, pkg_name in ipairs({ "stylua", "prettierd", "autopep8" }) do
	local ok, pkg = pcall(registry.get_package, pkg_name)
	if ok then
		if not pkg:is_installed() then
			pkg:install()
		end
	end
end

require("mason-lspconfig").setup({
	ensure_installed = {
		"ts_ls",
		-- "volar",
		"tailwindcss",
		"cssls",
		"yamlls",
		"prismals",
		"emmet_ls",
		"graphql",
		"astro",
		"lua_ls",
		"pyright",
		"denols",
		"rust_analyzer",
		-- "gopls",
		"jdtls",
		"eslint",
		"biome",
		"jsonls",
		"marksman",
		"html",
		"bashls",
		"intelephense",
		"htmx",
	},
	automatic_installation = true,
})
