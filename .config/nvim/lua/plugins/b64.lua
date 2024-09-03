return { 
	'taybart/b64.nvim',
	config = function()
		local wk = require('which-key')

		wk.add({
                { "<leader>b", group = "base64" },
				{ "<leader>be", require'b64'.encode, desc = "Encode", mode = "n" },
				{ "<leader>bd", require'b64'.decode, desc = "Decode", mode = "n" },
		})
	end
}
