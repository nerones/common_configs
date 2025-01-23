require("conform").setup({
  formatters_by_ft = {
    lua = { "stylua" },
    python = { "autopep8" },
    php = { "phpcbf", "php-cs-fixer" },
    typescriptreact = { "eslint_d" },
    javascriptreact = { "eslint_d" },
    javascript = { "eslint_d" },
    typescript = { "eslint_d" },
    json = { "prettierd" },
    jsonc = { "prettierd" },
    html = { "prettierd" },
    css = { "prettierd" },
    scss = { "prettierd" },
    graphql = { "prettierd" },
    markdown = { "prettierd" },
    vue = { "eslint_d" },
    astro = { "eslint_d" },
  },
  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_fallback = true,
  },
})
