return {
  cmd = { 'ansible-language-server' , '--stdio' },
  settings = {
    default_config = {
      python = {
        interpreterPath = 'python',
      },
      ansibleLint = {
        path = 'ansible-lint',
        enable = true,
      },
      ansible = {
        path = 'ansible',
      },
      hover = true,
      completion = true,
      executionEnvironment = false,
      validation = false,
      validationLint = false,
    },
  },
  filetypes = { 'yaml.ansible' },
}
