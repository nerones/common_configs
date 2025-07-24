require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
		python = { "autopep8" },
		php = { "phpcbf", "php-cs-fixer" },
		typescriptreact = { "eslint_d", "prettierd" },
		javascriptreact = { "eslint_d", "prettierd" },
		javascript = { "eslint_d", "prettierd" },
		typescript = { "eslint_d", "prettierd" },
		json = { "prettierd" },
		jsonc = { "prettierd" },
		html = { "prettierd" },
		css = { "prettierd" },
		scss = { "prettierd" },
		less = { "prettierd" },
		graphql = { "prettierd" },
		markdown = { "prettierd" },
		vue = { "eslint_d" },
		astro = { "eslint_d" },
		yaml = { "prettierd" },
		prisma = { lsp_format = true }, -- Use LSP formatting for Prisma files
	},
	format_on_save = {
		-- These options will be passed to conform.format()
		timeout_ms = 500,
	},
	formatters = {
		prettierd = {
			condition = function()
				return vim.fn.filereadable(".prettierrc") == 1 or vim.fn.filereadable(".prettierrc.json") == 1
			end,
		},
	},
})
