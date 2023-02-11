local status_ok, noice = pcall(require, "noice")
if not status_ok then
	return
end

noice.setup({
  cmdline = {
    enabled = true,
    view = "cmdline_popup",
  },
  views = {
    cmdline_popup = {
      border = {
        style = "none",
        padding = { 0, 0 },
      },
      filter_options = {},
      win_options = {
        winhighlight = "NormalFloat:NormalFloat,FloatBorder:FloatBorder",
      },
    },
    mini = {
      backend = "mini",
      relative = "editor",
      align = "message-right",
      timeout = 2000,
      reverse = true,
      position = {
        row = -1,
        col = "100%",
        -- col = 0,
      },
      size = "auto",
      border = {
        style = "none",
        padding = { 0, 0 },
      },
      zindex = 60,
      win_options = {
        winblend = 3,
        winhighlight = {
          Normal = "NoiceMini",
          IncSearch = "",
          Search = "",
        },
      },
    },
    confirm = {
      border = {
        style = "none",
        padding = { 1, 1 },
      },
      position = {
        row = '80%',
        col = '50%',
      },
    },
    popupmenu = {
      relative = "editor",
      position = {
      row = 8,
      col = "50%",
      },
      size = {
        width = 60,
        height = 10,
      },
      border = {
        style = "none",
        padding = { 1, 1 },
      },
      win_options = {
        winhighlight = { Normal = "Normal", FloatBorder = "DiagnosticInfo" },
      },
    },
  },
  messages = {
    enabled = true,
  },
  popupmenu = {
    enabled = true,
    backend = "nui",
  },
  history = {
    view = "split",
    opts = { enter = true },
    filter = { event = "msg_show", ["not"] = { kind = { "search_count", "echo" } } },
  },
  notify = {
    enabled = true,
  },
  hacks = {
      skip_duplicate_messages = true,
  },
  routes = {},
  lsp = {
    progress = { enabled = false },
    hover = { enabled = true },
    signature = { enabled = true },
  },

})
