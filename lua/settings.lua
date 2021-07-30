-- create variable to help config
local o = vim.opt
local wo = vim.wo

wo.number = true
o.clipboard = "unnamedplus"

o.splitright = true
o.hidden = true
o.guifont = 'FiraCode Nerd Font Mono 12'
o.lazyredraw = true
o.cursorline = true

o.shell = "/bin/sh"
