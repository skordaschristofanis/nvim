return {
    {
        "tpope/vim-fugitive",
        cmd = { "Git", "G", "Gdiffsplit", "Gread", "Gwrite" },
        keys = {
            { "<leader>gs", "<cmd>Git<cr>", desc = "Git Status" },
            { "<leader>gd", "<cmd>Gdiffsplit<cr>", desc = "Git Diff" },
            { "<leader>gb", "<cmd>Git blame<cr>", desc = "Git Blame" },
            { "<leader>gp", "<cmd>Git push<cr>", desc = "Git Push" },
            { "<leader>gf", "<cmd>Git pull<cr>", desc = "Git Pull" },
            { "<leader>ga", "<cmd>Git add %<cr>", desc = "Git Add Current File" },
            { "<leader>gA", "<cmd>Git add .<cr>", desc = "Git Add All" },
            {
                "<leader>gc",
                function()
                    local msg = vim.fn.input("Commit message: ")
                    if msg ~= "" then
                        vim.cmd("Git commit -m " .. vim.fn.shellescape(msg))
                    end
                end,
                desc = "Git Commit with Message",
            },
        },
    },

    {
        "lewis6991/gitsigns.nvim",
        config = function()
            require("gitsigns").setup()

            vim.keymap.set("n", "<leader>gsp", "<cmd>Gitsigns preview_hunk_inline<CR>", {})
            vim.keymap.set("n", "<leader>gst", "<cmd>Gitsigns toggle_current_line_blame<CR>", {})
        end,
    },
}
