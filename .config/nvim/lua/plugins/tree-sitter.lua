return {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
    config = function()
        require("nvim-treesitter.configs").setup {
            ensure_installed = { "c", "lua", "markdown", "python", "rust", "toml", "yaml", "json", "html", "css", "javascript", "typescript", "tsx", "bash", "go", "regex" , "proto", "dockerfile", "graphql", "jsonc", "scss", "svelte", "vue", "yaml" },
            highlight = {
                enable = true,
            },
            indent = {
                enable = true,
            },
            autotag = {
                enable = true,
            },
            context_commentstring = {
                enable = true,
            },
            incremental_selection = {
                enable = true,
            },
            refactor = {
                highlight_definitions = {
                    enable = true,
                },
                highlight_current_scope = {
                    enable = true,
                },
            },
        }
    end,
}
