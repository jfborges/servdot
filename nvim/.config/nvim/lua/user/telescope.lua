local status_ok, telescope = pcall(require, "telescope")
if not status_ok then
  return
end

local actions = require "telescope.actions"
pcall(require("telescope").load_extension, "noice")

telescope.setup {
  defaults = {
    prompt_prefix = " ",
    selection_caret = " ",
    path_display = { "smart" },
    file_ignore_patterns = {
      ".git/",
      "node_modules",
      ".m3u",
      ".mp3",
      ".pdf",
      ".db",
      ".png",
      ".jpg",
      ".jpeg",
      ".gif",
      "lyrics",
    },
    mappings = {
      i = {
        ["<Down>"] = actions.cycle_history_next,
        ["<Up>"] = actions.cycle_history_prev,
        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,
        ["<CR>"] = actions.select_vertical,
      },
    },
  },
}

