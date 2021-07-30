-- main editor configs
local api = vim.api
local opt = vim.opt
local g = vim.g


local function set_options()
  local options = {
    autoindent = true,
    autoread = true,
    clipboard = "unnamed,unnamedplus",
    cursorline = true,
    expandtab = true,
    hidden = true,
    ignorecase = true,
    mouse = "a",
    number = true,
    scrolloff = 5,
    shell = "/bin/bash",
    shiftwidth = 2,
    smartcase = true,
    smartindent = true,
    softtabstop = 2,
    splitbelow = true,
    splitright = true,
    tabstop = 2,
    termguicolors = true,
    wildignore = "*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.db,*.sqlite",
  }
  for key, val in pairs(options) do
    opt[key] = val
  end


  vim.cmd("autocmd FileType rst,md,adoc setlocal spell spelllang=en_ca")

  -- TODO is there a Lua API for those?
  vim.cmd(
    [[
      cnoreabbrev W w
      cnoreabbrev W! w!
      cnoreabbrev Q q
      cnoreabbrev Q! q!
      cnoreabbrev Qa qa
      cnoreabbrev Qa! qa!
      cnoreabbrev Wq wq
      cnoreabbrev Wa wa
      cnoreabbrev WQ wq
      cnoreabbrev Wqa wqa
    ]]
  )
end

set_options()
