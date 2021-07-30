local mapper = function(mode, key, result)
  vim.api.nvim_set_keymap(mode, key, result, {noremap = true, silent = true})
end


vim.g.mapleader = ' '

mapper("n", "w", ":w<CR>")
mapper("n", "q", ":q<CR>")
mapper("n", "tt", ":t.<CR>")
mapper("n", "<leader>,", "<Cmd>nohl<CR>")
mapper("n", "<leader>ls", "'0<CR>")

-- buffer and aplist navigation
mapper("n","<leader>h","<C-w>h<CR>")
mapper("n", "<leader>j", "<C-w>j<CR>")
mapper("n", "<leader>k", "<C-w>k<CR>")
mapper("n", "<leader>l", "<C-w>l<CR>")
mapper("n", "<leader>Q", "<C-w>c<CR>")
mapper("n", "<leader>w", "<Cmd>w<CR>")
mapper("n", "<leader>z", "<Cmd>bp<CR>")
mapper("n", "<leader>x", "<Cmd>bn<CR>")
mapper("n", "<leader>qa", "<Cmd>bufdo bw<CR>")
mapper("n", "<leader>q", "<Cmd>bw<CR>")

-- indent and keep selection
mapper("", ">", ">gv")
mapper("", "<", "<gv")

mapper("n", "c", [["_c]])
mapper("x", "c", [["_c]])

-- avoids conflict with lightspeed.nvim {"n", "s", [["_s]], opts},
mapper("x", "s", [["_s]])
mapper("n", "d", [["_d]])
mapper("x", "d", [["_d]])

-- stop p from overwtitting the register (by re-yanking it)
mapper("x", "p", "pgvy")

-- nerdtree
mapper("", "<C-m>", ":NERDTreeCWD<CR>")

