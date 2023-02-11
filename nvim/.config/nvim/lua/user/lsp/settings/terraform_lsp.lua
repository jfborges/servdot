local util = require 'lspconfig.util'

return {
  default_config = {
    cmd = { 'terraform-lsp' },
    filetypes = { 'terraform', 'hcl' },
    root_dir = util.root_pattern('.terraform', '.git'),
  },
}
