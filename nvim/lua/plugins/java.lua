return {
    'mfussenegger/nvim-jdtls',
    configurartion = function() 
        local jdtls_path = vim.fn.stdpath("data") .. "/mason/share/jdtls/"
        local conf =  {
            cmd = {"jdt-language-server"},
            root_dir = vim.fs.dirname(vim.fs.find({'gradlew', '.git', 'settings.gradle', 'pom.xml', 'mvnw'}, { upward = true })[1]),
        }
        require("jdtls").start_or_attach(conf)
    end
}
