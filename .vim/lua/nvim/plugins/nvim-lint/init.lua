local phpmd = require("lint").linters.phpmd

phpmd.args = {
	"-",
	"json",
	"codesize,design,unusedcode",
}

require("lint").linters.phpmd = phpmd

require("lint").linters_by_ft = {
	markdown = { "vale" },
	python = { "pylint" },
	php = { "phpcs", "phpstan", "phpmd" },
	typescript = { "eslint_d" },
	typescriptreact = { "eslint_d" },
	javascript = { "eslint_d" },
	javascriptreact = { "eslint_d" },
}

local phpmd_ns = require("lint").get_namespace("phpmd")
vim.diagnostic.config({ underline = { severity = vim.diagnostic.severity.ERROR } }, phpmd_ns)

local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })

vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave", "TextChanged" }, {
	group = lint_augroup,
	callback = function()
		-- try_lint without arguments runs the linters defined in `linters_by_ft`
		-- for the current filetype
		require("lint").try_lint()
	end,
})
