local util = require 'lspconfig.util'

local bin_name = 'docker-langserver'
local cmd = { bin_name, '--stdio' }

return {
  default_config = {
    cmd = cmd,
    filetypes = { 'dockerfile' },
    root_dir = util.root_pattern 'Dockerfile',
    single_file_support = true,
  },
}
