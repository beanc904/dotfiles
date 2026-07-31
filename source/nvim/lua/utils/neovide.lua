local M = {}

function M.change_opacity(delta)
  local new = vim.g.neovide_opacity + delta
  new = math.max(0.0, math.min(1.0, new))
  vim.g.neovide_opacity = new
  -- print(string.format("Neovide opacity: %.2f", new))
  vim.notify(string.format("Neovide opacity: %.2f", new), vim.log.levels.INFO)
end

function M.change_normal_opacity(delta)
  local new = vim.g.neovide_normal_opacity + delta
  new = math.max(0.0, math.min(1.0, new))
  vim.g.neovide_normal_opacity = new
  -- print(string.format("Neovide opacity: %.2f", new))
  vim.notify(string.format("Neovide normal opacity: %.2f", new), vim.log.levels.INFO)
end

function M.change_scale(delta)
  local new = vim.g.neovide_scale_factor + delta
  new = math.max(0.5, math.min(3.0, new))
  vim.g.neovide_scale_factor = new
  -- print(string.format("Neovide font scale: %.2f", new))
  vim.notify(string.format("Neovide font scale: %.2f", new), vim.log.levels.INFO)
end

function M.reset_scale()
  vim.g.neovide_scale_factor = 1.0
  -- print "Neovide font scale reset to 1.0"
  vim.notify("Neovide font scale reset to 1.0", vim.log.levels.INFO)
end

function M.get_font()
  local font = "JetBrainsMono Nerd Font"
  local sysname = vim.loop.os_uname().sysname
  if sysname == "Linux" then
    return font .. ":h12"
  elseif sysname == "Darwin" then
    return font .. ":h14"
  else
    return font .. ":h16"
  end
end

return M
