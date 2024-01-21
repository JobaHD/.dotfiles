local dap = require("dap")
local dapui = require("dapui")

require("nvim-dap-virtual-text").setup();

vim.keymap.set("n", "<leader>do", function() dap.continue() end);
vim.keymap.set("n", "<F1>", function() dap.step_into() end);
vim.keymap.set("n", "<F2>", function() dap.step_over() end);
vim.keymap.set("n", "<F3>", function() dap.step_out() end);
vim.keymap.set("n", "<leader>db", function() dap.toggle_breakpoint() end);
vim.keymap.set("n", "<leader>dcb", function() dap.set_breakpoint(vim.fn.input('Breakpoint condition: ')) end);
vim.keymap.set("n", "<leader>dlb", function() dap.set_breakpoint(nil, nil, vim.fn.input('Log point message: ')) end);
vim.keymap.set("n", "<leader>dr", function() dap.repl_open() end);

dap.adapters.gdb = {
    type = "executable",
    command = "gdb",
    args = { "-i", "dap" }
}

dap.configurations.c = {
    {
        name = "Launch",
        type = "gdb",
        request = "launch",
        program = function()
            return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
        end,
        cwd = "${workspaceFolder}",
    },
}

dapui.setup({
    controls = {
        element = "repl",
        enabled = true,
        icons = {
            disconnect = "",
            pause = "",
            play = "",
            run_last = "",
            step_into = "",
            step_out = "",
            step_over = "",
            terminate = ""
        }
    },
    element_mappings = {},
    expand_lines = true,
    floating = {
        border = "single",
        mappings = {
            close = { "q", "<Esc>" }
        }
    },
    force_buffers = true,
    icons = {
        collapsed = "",
        current_frame = "",
        expanded = ""
    },
    layouts = { {
        elements = { {
            id = "scopes",
            size = 0.33
        }, {
            id = "breakpoints",
            size = 0.33
        }, {
            id = "stacks",
            size = 0.33
        } },
        position = "left",
        size = 40
    }, {
        elements = { {
            id = "repl",
            size = 0.5
        }
        , {
            id = "watches",
            size = 0.5
        } },
        position = "bottom",
        size = 10
    } },
    mappings = {
        edit = "e",
        expand = { "<CR>", "<2-LeftMouse>" },
        open = "o",
        remove = "d",
        repl = "r",
        toggle = "t"
    },
    render = {
        indent = 1,
        max_value_lines = 100
    }
})

dap.listeners.before.event_initialized.dapui_config = function()
    dapui.open()
end
dap.listeners.before.event_terminated.dapui_config = function()
    dapui.close()
end
dap.listeners.before.event_exited.dapui_config = function()
    dapui.close()
end
