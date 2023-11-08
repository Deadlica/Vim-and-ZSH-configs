local M = {}

M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = {
      "<cmd> DapToggleBreakpoint <CR>",
      "Add breakpoint at line",
    },
    ["<leader>dr"] = {
      "<cmd> DapContinue <CR>",
      "Start or continue the debugger",
    },
    ["<S-Tab>"] = {
      " <<"
    }
  },
  i = {
    ["<C-h>"] = {
      "<C-o>db"
    },
    ["<C-Del>"] = {
      "<C-o>dw"
    },
    ["<S-Tab>"] = {
      "<C-d>"
    }
  }
}

return M
