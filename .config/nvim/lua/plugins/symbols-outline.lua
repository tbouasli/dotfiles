return {
	"simrat39/symbols-outline.nvim",
	config = function()
		require("symbols-outline").setup()

		local wk = require("which-key")

		wk.add({
			{ "<leader>o",  group = "outline" },
			{ "<leader>oo", ":SymbolsOutline<CR>", desc = "Toggle Outline", mode = "n" },
			{ "<leader>on", ":SymbolsOutlineNext<CR>", desc = "Next Symbol", mode = "n" },
			{ "<leader>op", ":SymbolsOutlinePrev<CR>", desc = "Previous Symbol", mode = "n" },
		})
	end,
}
