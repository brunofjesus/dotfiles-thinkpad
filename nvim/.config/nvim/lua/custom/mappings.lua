local M = {}

M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = {
      "<cmd> DapToggleBreakpoint <CR>",
      "Add breakpoint at line"
    },
    ["<leader>dus"] = {
      function ()
        local widgets = require('dap.ui.widgets');
        local sidebar = widgets.sidebar(widgets.scopes);
        sidebar.open();
      end,
      "Open debugging sidebar"
    },
    ["<F1>"] = { "<cmd>lua require('dapui').toggle()<CR>", "DAP UI" },
    ["<F2>"] = { "<cmd>lua require('dap').step_over()<CR>", "DAP Step Over" },
    ["<F3>"] = { "<cmd>lua require('dap').step_into()<CR>", "DAP Step Into" },
    ["<F4>"] = { "<cmd>lua require('dap').step_out()<CR>", "DAP Step Out" },
    ["<F5>"] = { "<cmd>lua require('dap').continue()<CR>", "DAP Continue" },
    ["<F6>"] = { "<cmd>lua require('dap').down()<CR>", "DAP Down Stack" },
    ["<F7>"] = { "<cmd>lua require('dap').up()<CR>", "DAP Up Stack" },
    ["<F8>"] = { "<cmd>lua require('dap').run_to_cursor()<CR>", "DAP Run To Cursor" },
    ["<F12>"] = { "<cmd>lua require('dap').terminate()<CR>", "DAP Terminate" },
  }
}

M.dap_go = {
  plugin = true,
  n = {
    ["<leader>dgt"] = {
      function()
        require('dap-go').debug_test()
      end,
      "Debug go test"
    },
    ["<leader>dgl"] = {
      function()
        require('dap-go').debug_last()
      end,
      "Debug last go test"
    }
  }
}

return M
