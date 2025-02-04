return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = {{ "nvim-lua/plenary.nvim" }},
	config = function()
		local harpoon = require("harpoon")

		harpoon.setup()
	
		local wk = require("which-key")



		local conf = require("telescope.config").values
		local function toggle_telescope(harpoon_files)
    		local file_paths = {}
    		for _, item in ipairs(harpoon_files.items) do
       			table.insert(file_paths, item.value)
    		end

    		require("telescope.pickers").new({}, {
        		prompt_title = "Harpoon",
        		finder = require("telescope.finders").new_table({
            		results = file_paths,
        		}),
        		previewer = conf.file_previewer({}),
        		sorter = conf.generic_sorter({}),
    		}):find()
		end

		wk.add({
			{ "<leader>h", group = "harpoon" },
			{ "<leader>ha", function() harpoon:list():add() end, desc = "Add", mode = "n" },
			{ "<leader>hm", function() toggle_telescope(harpoon:list()) end, desc = "Menu", mode = "n" },
			{ "<leader>hn", function() harpoon:list():next() end, desc = "Next", mode = "n" },
			{ "<leader>hp", function() harpoon:list():prev() end, desc = "Previous", mode = "n" },
			
			{ "C-h", function() harpoon:list():select(1) end, desc = "Go to file 1", mode = "n" },
			{ "C-j", function() harpoon:list():select(2) end, desc = "Go to file 2", mode = "n" },
			{ "C-k", function() harpoon:list():select(3) end, desc = "Go to file 3", mode = "n" },
			{ "C-l", function() harpoon:list():select(4) end, desc = "Go to file 4", mode = "n" },
		})

	end,
}
