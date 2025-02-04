return {
    "williamboman/mason-lspconfig.nvim",
    config = function()
        require("mason-lspconfig").setup{
            ensure_installed = {
                "rust_analyzer",
                "ts_ls",
				"buf_ls",
                "gopls",
				"prismals",
				"tailwindcss",
				"ansiblels",
            },
        }
    end,
}
