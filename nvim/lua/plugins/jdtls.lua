return {
    {"mfussenegger/nvim-jdtls.nvim",
    config = function ()
        require("jdtls").start_on_attach({
            cmd = {'~/eclipse.jdt.ls/bin/jdtls'},
            root_dir =vim.fs.driname(vim.fs.find( {"settings.gradle", "gradlew"}, {upward = true })[1]),
        })
    end
    }
}
