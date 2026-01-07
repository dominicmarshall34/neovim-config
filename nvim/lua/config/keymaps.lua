local keymap = vim.keymap.set

-- Find file (requires mini.pick)
keymap("n", "<leader>ff", function() require("mini.pick").builtin.files() end, { desc = "Find file" })

-- Find string (requires mini.pick)
keymap("n", "<leader>fs", function() require("mini.pick").builtin.grep_live() end, { desc = "Find string" })

-- Find buffers
keymap("n", "<leader>fb", function() require("mini.pick").builtin.buffers() end, { desc = "Find buffer" })

-- Find help tags
keymap("n", "<leader>fh", function() require("mini.pick").builtin.help() end, { desc = "Find help" })

-- System clipboard copy/paste
keymap("n", "<leader>y", '"+y', { desc = "Copy to system clipboard" })
keymap("v", "<leader>y", '"+y', { desc = "Copy to system clipboard" })
keymap("n", "<leader>Y", '"+Y', { desc = "Copy line to system clipboard" })
keymap("n", "<leader>p", '"+p', { desc = "Paste from system clipboard" })
keymap("v", "<leader>p", '"+p', { desc = "Paste from system clipboard" })
keymap("n", "<leader>P", '"+P', { desc = "Paste before from system clipboard" })
