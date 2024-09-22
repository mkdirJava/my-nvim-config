local mason = require("mason")
mason.setup({
        registries = {
                'github:nvim-java/mason-registry',
                'github:mason-org/mason-registry',
        },
})

require("java").setup({})
require('lspconfig').jdtls.setup({})

local dap, dapui = require("dap"), require("dapui")
dap.listeners.before.attach.dapui_config = function()
  dapui.open()
end
dap.listeners.before.launch.dapui_config = function()
  dapui.open()
end
dap.listeners.before.event_terminated.dapui_config = function()
  dapui.close()
end
dap.listeners.before.event_exited.dapui_config = function()
  dapui.close()
end

dapui.setup()
