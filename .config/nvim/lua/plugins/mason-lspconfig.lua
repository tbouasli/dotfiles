return {
    "williamboman/mason-lspconfig.nvim",
    config = function()
        require("mason-lspconfig").setup{
            ensure_installed = {
                "rust_analyzer",
				"cssls",
				"html",
				"htmx",
				"jsonls",
				"astro",
				"tsserver",
                "ts_ls",
				"buf_ls",
                "gopls",
				"prismals",
				"tailwindcss",
				"ansiblels",
				"biome",
            },
        }
    end,
}
