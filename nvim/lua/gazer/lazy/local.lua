
local local_plugins = {
    { "nvim-neotest/nvim-nio" },

    --{
    --    "ThePrimeagen/harpoon",
   --     branch = "harpoon2",
   --     -- dir = "~/personal/harpoon",
   --     config = function()
   --         local harpoon = require("harpoon")

   --         harpoon:setup()

   --         vim.keymap.set("n", "<leader>A", function() harpoon:list():prepend() end)
   --         vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)
   --         vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

   --         vim.keymap.set("n", "<C-h>", function() harpoon:list():select(1) end)
   --         vim.keymap.set("n", "<C-t>", function() harpoon:list():select(2) end)
   --         vim.keymap.set("n", "<C-n>", function() harpoon:list():select(3) end)
   --         vim.keymap.set("n", "<C-s>", function() harpoon:list():select(4) end)
   --         vim.keymap.set("n", "<leader><C-h>", function() harpoon:list():replace_at(1) end)
   --         vim.keymap.set("n", "<leader><C-t>", function() harpoon:list():replace_at(2) end)
   --         vim.keymap.set("n", "<leader><C-n>", function() harpoon:list():replace_at(3) end)
   --         vim.keymap.set("n", "<leader><C-s>", function() harpoon:list():replace_at(4) end)
   --     end
   -- },
    {
        'akinsho/flutter-tools.nvim',
        lazy = false,
        dependencies = {
            'nvim-lua/plenary.nvim',
            'stevearc/dressing.nvim', -- optional for vim.ui.select
        },
        config = function()
            require("flutter-tools").setup({
                decorations = {
                    statusline = {
                        device = false
                    }
                },
            })

            vim.keymap.set("n", "<leader>ca", function() vim.lsp.buf.code_action() end);
            vim.keymap.set("x", "<leader>ca", function() vim.lsp.buf.range_code_action() end);
            require("telescope").load_extension("flutter")
        end,
    },
    {
     'stevearc/conform.nvim',
        lazy = false,
        config = function()
            require("conform").setup({
                formatters_by_ft = {
                    dart = { "dart_format" },
                    javascript = { "prettierd", "prettier", stop_after_first = true },
                },
                stop_after_first = true,
                format_after_save = true,
            })
            --vim.api.nvim_create_autocmd("BufWritePre", {
            --    pattern = "*.dart",
            --    callback = function(args)
            --        require("conform").format({ bufnr = args.buf })
            --    end,
            --})
        end
    },
}

return local_plugins

