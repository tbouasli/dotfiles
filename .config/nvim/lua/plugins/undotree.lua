return {
	"mbbill/undotree",
	config = function()
		local wk = require("which-key")

		wk.add({
			{ "<leader>u", ":UndotreeToggle<CR>", desc = "Toggle Undo Tree" },
		})
	end
}
