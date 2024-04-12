return {
	'mfussenegger/nvim-jdtls',
	config = function ()
		local c =  {
				cmd = {'/home/vekni/.local/share/nvim/mason/packages/jdtls/bin/jdtls'},
				root_dir = require('jdtls.setup').find_root({'.git', 'mvnw', 'gradlew',"settings.gradle"}),
		}
		require('jdtls').start_or_attach(c)
		end

}
