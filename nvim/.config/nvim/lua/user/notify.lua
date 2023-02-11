local status_ok, notify = pcall(require, "notify")
if not status_ok then
  return
end

notify.setup {
  background_colour = "#000000",
  stages = "static",
  on_open = nil,
  on_close = nil,
  timeout = 2000,
  render = "minimal",
  minimum_width = 34,
}
