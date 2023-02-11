return {
  default_config = {
    cmd = { 'bash-language-server' , 'start' },
    cmd_env = {
      GLOB_PATTERN = vim.env.GLOB_PATTERN or '*@(.sh|.inc|.bash|.command)',
    },
    filetypes = { 'sh' },
    single_file_support = true,
  },
}
