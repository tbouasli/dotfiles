return {
    "neovim/nvim-lspconfig",
    config = function ()

        local on_attach  = function(client, bufnr)
            local wk = require("which-key")
            wk.add({
                { "K", vim.lsp.buf.hover, desc = "Show Hover", mode = "n", buffer = bufnr },
                { "<leader>rn", vim.lsp.buf.rename, desc = "Rename", mode = "n", buffer = bufnr },
                { "<leader>c", group = "code" },
                { "<leader>ca", vim.lsp.buf.code_action, desc = "Code Action", mode = "n", buffer = bufnr },
                { "<leader>cf", vim.lsp.buf.formatting, desc = "Format", mode = "n", buffer = bufnr },
                { "<leader>d", group = "diagnostic" },
                { "<leader>dn", vim.diagnostic.goto_next, desc = "Go to Next Diagnostic", mode = "n", buffer = bufnr },
                { "<leader>dp", vim.diagnostic.goto_prev, desc = "Go to Previous Diagnostic", mode = "n", buffer = bufnr },
            })
        end

        local capabilities = require('cmp_nvim_lsp').default_capabilities()

        require'lspconfig'.rust_analyzer.setup{
            on_attach = on_attach,
            capabilities = capabilities,
        }

        require'lspconfig'.tsserver.setup{
            on_attach = on_attach,
            capabilities = capabilities,
        }

        require'lspconfig'.gopls.setup{
            on_attach = on_attach,
            capabilities = capabilities,
        }

	require'lspconfig'.tailwindcss.setup{
	    on_attach = on_attach,
	    capabilities = capabilities,
	}
    end
}
