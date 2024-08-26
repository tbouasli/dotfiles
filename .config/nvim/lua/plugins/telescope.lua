return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim', {
        "nvim-telescope/telescope-fzf-native.nvim",
        build = "make",
        config = function()
            require("telescope").load_extension("fzf")
        end,
    } },
    requires = {
        { 'nvim-telescope/telescope-ui-select.nvim' },
    },
    config = function()
        require('telescope').setup {
            extensions = {
                fzf = {
                    fuzzy = true,                 -- false will only do exact matching
                    override_generic_sorter = true, -- override the generic sorter
                    override_file_sorter = true,  -- override the file sorter
                    case_mode = "smart_case",     -- or "ignore_case" or "respect_case"
                }
            },
            pickers = {
                find_files = {
                    hidden = true,
                },
                live_grep = {
                    hidden = true,
                },
            }
        }

        local builtin = require('telescope.builtin')
        local wk = require("which-key")

        wk.add({
            { "<leader>f",  group = "find" },
            { "<leader>ff", builtin.find_files,           desc = "Find File",            mode = "n" },
            { "<leader>fg", builtin.live_grep,            desc = "Grep",                 mode = "n" },
	    { "<leader>fr", builtin.resume,               desc = "Resume Search",        mode = 'n' },
            { "<leader>dl", builtin.diagnostics,          desc = "Document Diagnostics", mode = "n" },
            { "<leader>fh", builtin.help_tags,            desc = "Help Tags",            mode = "n" },
            { "<leader>g",  group = "go to" },
            { "<leader>gd", builtin.lsp_definitions,      desc = "LSP Definitions",      mode = "n" },
            { "<leader>gr", builtin.lsp_references,       desc = "LSP References",       mode = "n" },
            { "<leader>gt", builtin.lsp_type_definitions, desc = "LSP Type Definitions", mode = "n" },
        })
    end
}
