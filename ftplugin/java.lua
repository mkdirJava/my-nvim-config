local jdtls = require("jdtls")


-- This bundles definition is the same as in the previous section (java-debug installation)
local java_debug_bundles = {
  vim.fn.glob("/home/origin/.config/nvim/jdtls_dependencies/com.microsoft.java.debug.plugin-0.53.0.jar", 1)
};

-- This is the new part
vim.list_extend(java_debug_bundles, vim.split(vim.fn.glob("/home/origin/.config/nvim/jdtls_dependencies/*.jar", 1), "\n"))

-- jdtls.test_class()
-- jdtls.test_nearest_method()
local config = {
    cmd = {"/home/origin/.local/share/nvim/mason/packages/jdtls/bin/jdtls"},
    root_dir = vim.fs.dirname(vim.fs.find({'gradlew', '.git', 'mvnw'}, { upward = true })[1]),
    init_options ={
            bundles = java_debug_bundles,
    }
}
jdtls.start_or_attach(config)
