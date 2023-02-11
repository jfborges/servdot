local util = require 'lspconfig.util'

local bin_name = 'yaml-language-server'
local cmd = { bin_name, '--stdio' }

return {
  default_config = {
    cmd = cmd,
    filetypes = { 'yaml', 'yaml.docker-compose' },
    root_dir = util.find_git_ancestor,
    single_file_support = true,
    settings = {
      -- https://github.com/redhat-developer/vscode-redhat-telemetry#how-to-disable-telemetry-reporting
      redhat = { telemetry = { enabled = false } },
    },
  },
}
