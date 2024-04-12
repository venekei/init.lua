return {
    { "mfussenegger/nvim-dap" },
    { "leoluz/nvim-dap-go",
        config =  function()
            require('dap-go').setup()
        end},
    { "rcarriga/nvim-dap-ui",
        dependencies = {
            "nvim-neotest/nvim-nio"
        },
        config = function()
            local dap = require('dap')
            local dapui = require('dapui')
            dap.listeners.after.event_initialized["dapui_config"] = function ()
                dapui.open()
            end
            dap.listeners.after.event_terminated["dapui_config"] = function ()
                dapui.close()
            end
            dap.listeners.after.event_exited["dapui_config"] = function ()
                dapui.close()
            end
            vim.keymap.set('n', '<Leader>dt', dap.toggle_breakpoint, {})
            vim.keymap.set('n', '<Leader>dc', dap.continue, {})
            vim.keymap.set('n', '<F7>', function() require('dap').step_over() end)
            vim.keymap.set('n', '<F8>', function() require('dap').step_into() end)
            vim.keymap.set('n', '<F9>', function() require('dap').step_out() end)
        end},
}
