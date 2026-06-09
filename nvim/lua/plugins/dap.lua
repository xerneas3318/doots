return {
  "mfussenegger/nvim-dap",
  dependencies = {
    "nvim-neotest/nvim-nio",
    "rcarriga/nvim-dap-ui",
    "mfussenegger/nvim-dap-python",
    "theHamsta/nvim-dap-virtual-text",
  },
  config = function()
    local dap = require("dap")
    local dapui = require("dapui")
    local dap_python = require("dap-python")

    dapui.setup({})
    require("nvim-dap-virtual-text").setup({
      commented = true,
    })

    dap_python.setup("python3")

    vim.fn.sign_define("DapBreakpoint", {
      text = "●",
      texthl = "DiagnosticSignError",
      linehl = "",
      numhl = "",
    })
    vim.fn.sign_define("DapBreakpointRejected", {
      text = "",
      texthl = "DiagnosticSignError",
      linehl = "",
      numhl = "",
    })
    vim.fn.sign_define("DapStopped", {
      text = "▶",
      texthl = "DiagnosticSignWarn",
      linehl = "Visual",
      numhl = "DiagnosticSignWarn",
    })

    dap.listeners.after.event_initialized["dapui_config"] = function()
      dapui.open()
    end

    local opts = { noremap = true, silent = true }
    vim.keymap.set("n", "<leader>db", dap.toggle_breakpoint, opts)
    vim.keymap.set("n", "<leader>dc", dap.continue, opts)
    vim.keymap.set("n", "<leader>do", dap.step_over, opts)
    vim.keymap.set("n", "<leader>di", dap.step_into, opts)
    vim.keymap.set("n", "<leader>dO", dap.step_out, opts)
    vim.keymap.set("n", "<leader>dq", dap.terminate, opts)
    vim.keymap.set("n", "<leader>du", dapui.toggle, opts)
  end,
}
