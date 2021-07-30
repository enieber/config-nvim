-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/enieber/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?.lua;/home/enieber/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?/init.lua;/home/enieber/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?.lua;/home/enieber/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/enieber/.cache/nvim/packer_hererocks/2.0.5/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["aerial.nvim"] = {
    config = { "\27LJ\1\2C\0\0\2\0\4\0\0054\0\0\0007\0\1\0003\1\3\0:\1\2\0G\0\1\0\1\0\2\rmax_with\3ð\1\14min_width\3x\vaerial\6g\bvim\0" },
    loaded = true,
    path = "/home/enieber/.local/share/nvim/site/pack/packer/start/aerial.nvim"
  },
  ["buftabline.nvim"] = {
    config = { "\27LJ\1\2\0\0\2\0\4\0\a4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0>\0\2\1G\0\1\0\1\0\4\17index_format\b%d \nicons\2\20buffer_id_index\2\19hlgroup_normal\fTabLine\nsetup\15buftabline\frequire\0" },
    loaded = true,
    path = "/home/enieber/.local/share/nvim/site/pack/packer/start/buftabline.nvim"
  },
  ["cmd-parser.nvim"] = {
    loaded = true,
    path = "/home/enieber/.local/share/nvim/site/pack/packer/start/cmd-parser.nvim"
  },
  ["elixir.nvim"] = {
    loaded = true,
    path = "/home/enieber/.local/share/nvim/site/pack/packer/start/elixir.nvim"
  },
  ["formatter.nvim"] = {
    config = { "\27LJ\1\0021\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\22modules.formatter\frequire\0" },
    loaded = true,
    path = "/home/enieber/.local/share/nvim/site/pack/packer/start/formatter.nvim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/home/enieber/.local/share/nvim/site/pack/packer/start/friendly-snippets"
  },
  ["git-blame.nvim"] = {
    config = { "\27LJ\1\0022\0\0\2\0\3\0\0054\0\0\0007\0\1\0'\1\0\0:\1\2\0G\0\1\0\21gitblame_enabled\6g\bvim\0" },
    loaded = true,
    path = "/home/enieber/.local/share/nvim/site/pack/packer/start/git-blame.nvim"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\1\2D\0\0\2\0\4\0\a4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0>\0\2\1G\0\1\0\1\0\1\nnumhl\2\nsetup\rgitsigns\frequire\0" },
    loaded = true,
    path = "/home/enieber/.local/share/nvim/site/pack/packer/start/gitsigns.nvim"
  },
  ["go.nvim"] = {
    loaded = false,
    needs_bufread = true,
    path = "/home/enieber/.local/share/nvim/site/pack/packer/opt/go.nvim"
  },
  ["greplace.vim"] = {
    commands = { "Gsearch" },
    loaded = false,
    needs_bufread = false,
    path = "/home/enieber/.local/share/nvim/site/pack/packer/opt/greplace.vim"
  },
  ["indent-blankline.nvim"] = {
    loaded = true,
    path = "/home/enieber/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim"
  },
  kommentary = {
    config = { "\27LJ\1\2|\0\0\3\0\5\0\b4\0\0\0%\1\1\0>\0\2\0027\0\2\0%\1\3\0003\2\4\0>\0\3\1G\0\1\0\1\0\1 prefer_single_line_comments\2\fdefault\23configure_language\22kommentary.config\frequire\0" },
    loaded = true,
    path = "/home/enieber/.local/share/nvim/site/pack/packer/start/kommentary"
  },
  ["lightspeed.nvim"] = {
    loaded = true,
    path = "/home/enieber/.local/share/nvim/site/pack/packer/start/lightspeed.nvim"
  },
  ["lspsaga.nvim"] = {
    loaded = true,
    path = "/home/enieber/.local/share/nvim/site/pack/packer/start/lspsaga.nvim"
  },
  ["lua-dev.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/enieber/.local/share/nvim/site/pack/packer/opt/lua-dev.nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\1\2\18\0\0\1\0\1\0\2%\0\0\0H\0\2\0\a%f\20\0\0\1\0\1\0\2%\0\0\0H\0\2\0\t%p%%Œ\3\1\0\5\0\24\0\0314\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\b\0003\2\4\0003\3\3\0:\3\5\0023\3\6\0:\3\a\2:\2\t\0013\2\v\0003\3\n\0:\3\f\0023\3\r\0:\3\14\0022\3\3\0001\4\15\0;\4\1\3:\3\16\0023\3\17\0:\3\18\0022\3\3\0001\4\19\0;\4\1\3:\3\20\0023\3\21\0:\3\22\2:\2\23\1>\0\2\1G\0\1\0\rsections\14lualine_z\1\2\0\0\rlocation\14lualine_y\0\14lualine_x\1\4\0\0\rencoding\15fileformat\rfiletype\14lualine_c\0\14lualine_b\1\3\0\0\vbranch\tdiff\14lualine_a\1\0\0\1\2\0\0\tmode\foptions\1\0\0\25component_separators\1\3\0\0\bî‚µ\bî‚·\23section_separators\1\0\1\ntheme\18material-nvim\1\3\0\0\bî‚´\bî‚¶\nsetup\flualine\frequire\0" },
    loaded = true,
    path = "/home/enieber/.local/share/nvim/site/pack/packer/start/lualine.nvim"
  },
  ["material.nvim"] = {
    config = { "\27LJ\1\2c\0\0\2\0\a\0\n4\0\0\0007\0\1\0%\1\3\0:\1\2\0004\0\4\0%\1\5\0>\0\2\0027\0\6\0>\0\1\1G\0\1\0\bset\rmaterial\frequire\14palenight\19material_style\6g\bvim\0" },
    loaded = true,
    path = "/home/enieber/.local/share/nvim/site/pack/packer/start/material.nvim"
  },
  ["neoscroll.nvim"] = {
    config = { "\27LJ\1\0027\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\14neoscroll\frequire\0" },
    loaded = true,
    path = "/home/enieber/.local/share/nvim/site/pack/packer/start/neoscroll.nvim"
  },
  nerdtree = {
    loaded = true,
    path = "/home/enieber/.local/share/nvim/site/pack/packer/start/nerdtree"
  },
  ["nvim-compe"] = {
    loaded = true,
    path = "/home/enieber/.local/share/nvim/site/pack/packer/start/nvim-compe"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\1\2+\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\16modules.lsp\frequire\0" },
    loaded = true,
    path = "/home/enieber/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-lspinstall"] = {
    loaded = true,
    path = "/home/enieber/.local/share/nvim/site/pack/packer/start/nvim-lspinstall"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\1\2€\3\0\0\5\0\14\0\0294\0\0\0007\0\1\0'\1\1\0:\1\2\0004\0\0\0007\0\1\0'\1\1\0:\1\3\0004\0\0\0007\0\1\0003\1\5\0:\1\4\0004\0\0\0007\0\1\0'\1$\0:\1\6\0004\0\0\0007\0\1\0'\1\1\0:\1\a\0004\0\0\0007\0\b\0007\0\t\0%\1\n\0%\2\v\0%\3\f\0003\4\r\0>\0\5\1G\0\1\0\1\0\1\fnoremap\2\28<Cmd>NvimTreeToggle<CR>\15<Leader>nt\6n\20nvim_set_keymap\bapi!nvim_tree_width_allow_resize\20nvim_tree_width\1\b\0\0\v\\.pyc$\16__pycache__\t.git\14.DS_Store\17.ropeproject\14.coverage\vcover/\21nvim_tree_ignore%nvim_tree_highlight_opened_files\27nvim_tree_add_trailing\6g\bvim\0" },
    loaded = true,
    path = "/home/enieber/.local/share/nvim/site/pack/packer/start/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\1\2À\3\0\0\4\0\15\0\0194\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\4\0003\2\3\0:\2\5\0013\2\6\0002\3\0\0:\3\a\2:\2\b\0013\2\t\0003\3\n\0:\3\v\2:\2\f\0013\2\r\0:\2\14\1>\0\2\1G\0\1\0\vindent\1\0\1\venable\2\26incremental_selection\fkeymaps\1\0\4\19init_selection\15<leader>is\22scope_incremental\6w\21node_incremental\6+\21node_decremental\6-\1\0\1\venable\2\14highlight\fdisable\1\0\1\venable\2\21ensure_installed\1\0\0\1\23\0\0\tbash\bcss\15dockerfile\belm\tfish\ago\ngomod\fgraphql\thtml\15javascript\tjson\blua\vpython\nregex\brst\truby\trust\tscss\ttoml\btsx\15typescript\tyaml\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/home/enieber/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/enieber/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/enieber/.local/share/nvim/site/pack/packer/start/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/enieber/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["range-highlight.nvim"] = {
    config = { "\27LJ\1\2A\0\0\2\0\3\0\a4\0\0\0%\1\1\0>\0\2\0027\0\2\0002\1\0\0>\0\2\1G\0\1\0\nsetup\20range-highlight\frequire\0" },
    loaded = true,
    path = "/home/enieber/.local/share/nvim/site/pack/packer/start/range-highlight.nvim"
  },
  ["ruby.nvim"] = {
    config = { "\27LJ\1\2W\0\0\3\0\4\0\n4\0\0\0%\1\1\0>\0\2\0024\1\0\0%\2\1\0>\1\2\0027\1\2\0013\2\3\0>\1\2\1G\0\1\0\1\0\1\rtest_cmd\bcat\nsetup\14ruby_nvim\frequire\0" },
    loaded = false,
    needs_bufread = true,
    path = "/home/enieber/.local/share/nvim/site/pack/packer/opt/ruby.nvim"
  },
  ["traces.vim"] = {
    loaded = true,
    path = "/home/enieber/.local/share/nvim/site/pack/packer/start/traces.vim"
  },
  ["vim-abolish"] = {
    loaded = true,
    path = "/home/enieber/.local/share/nvim/site/pack/packer/start/vim-abolish"
  },
  ["vim-better-whitespace"] = {
    config = { "\27LJ\1\2u\0\0\5\0\a\0\t4\0\0\0007\0\1\0007\0\2\0%\1\3\0%\2\4\0%\3\5\0003\4\6\0>\0\5\1G\0\1\0\1\0\1\fnoremap\2\29<Cmd>StripWhitespace<CR>\15<Leader>fw\6n\20nvim_set_keymap\bapi\bvim\0" },
    loaded = true,
    path = "/home/enieber/.local/share/nvim/site/pack/packer/start/vim-better-whitespace"
  },
  ["vim-elixir"] = {
    loaded = true,
    path = "/home/enieber/.local/share/nvim/site/pack/packer/start/vim-elixir"
  },
  ["vim-expand-region"] = {
    config = { "\27LJ\1\2¥\1\0\0\5\0\a\0\0174\0\0\0007\0\1\0007\0\2\0%\1\3\0%\2\3\0%\3\4\0002\4\0\0>\0\5\0014\0\0\0007\0\1\0007\0\2\0%\1\3\0%\2\5\0%\3\6\0002\4\0\0>\0\5\1G\0\1\0!<Plug>(expand_region_shrink)\n<C-v>!<Plug>(expand_region_expand)\6v\20nvim_set_keymap\bapi\bvim\0" },
    loaded = true,
    path = "/home/enieber/.local/share/nvim/site/pack/packer/start/vim-expand-region"
  },
  ["vim-floaterm"] = {
    config = { "\27LJ\1\2»\2\0\0\b\0\f\0#%\0\0\0004\1\1\0004\2\2\0007\2\3\0027\2\4\2>\2\1\0=\1\0\4T\4\18€4\5\5\0007\5\6\0054\6\2\0007\6\3\0067\6\a\6\16\a\4\0>\6\2\2%\a\b\0>\5\3\2\15\0\5\0T\6\a€4\5\2\0007\5\t\5%\6\n\0\16\a\0\0$\6\a\6>\5\2\1G\0\1\0A\4\3\2N\4ì4\1\2\0007\1\t\1%\2\v\0\16\3\0\0$\2\3\2>\1\2\1G\0\1\0AFloatermNew fish --wintype=split --autoclose=1 --height=0.38\17FloatermShow\bcmd\r^term://\22nvim_buf_get_name\nmatch\vstring\19nvim_list_bufs\bapi\bvim\vipairs\24 --name=terminal-42Ï\1\1\0\5\0\f\0\0204\0\0\0001\1\2\0:\1\1\0004\0\3\0007\0\4\0007\0\5\0%\1\6\0%\2\a\0%\3\b\0002\4\0\0>\0\5\0014\0\3\0007\0\4\0007\0\5\0%\1\t\0%\2\n\0%\3\v\0002\4\0\0>\0\5\1G\0\1\0 <C-\\><C-n>:FloatermHide<CR>\15<Esc><Esc>\6t\29:lua show_floaterm()<CR>\14<Leader>t\6n\20nvim_set_keymap\bapi\bvim\0\18show_floaterm\a_G\0" },
    loaded = true,
    path = "/home/enieber/.local/share/nvim/site/pack/packer/start/vim-floaterm"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/home/enieber/.local/share/nvim/site/pack/packer/start/vim-fugitive"
  },
  ["vim-ref"] = {
    loaded = true,
    path = "/home/enieber/.local/share/nvim/site/pack/packer/start/vim-ref"
  },
  ["vim-vsnip"] = {
    loaded = true,
    path = "/home/enieber/.local/share/nvim/site/pack/packer/start/vim-vsnip"
  },
  ["vim-vsnip-integ"] = {
    loaded = true,
    path = "/home/enieber/.local/share/nvim/site/pack/packer/start/vim-vsnip-integ"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: aerial.nvim
time([[Config for aerial.nvim]], true)
try_loadstring("\27LJ\1\2C\0\0\2\0\4\0\0054\0\0\0007\0\1\0003\1\3\0:\1\2\0G\0\1\0\1\0\2\rmax_with\3ð\1\14min_width\3x\vaerial\6g\bvim\0", "config", "aerial.nvim")
time([[Config for aerial.nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\1\2À\3\0\0\4\0\15\0\0194\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\4\0003\2\3\0:\2\5\0013\2\6\0002\3\0\0:\3\a\2:\2\b\0013\2\t\0003\3\n\0:\3\v\2:\2\f\0013\2\r\0:\2\14\1>\0\2\1G\0\1\0\vindent\1\0\1\venable\2\26incremental_selection\fkeymaps\1\0\4\19init_selection\15<leader>is\22scope_incremental\6w\21node_incremental\6+\21node_decremental\6-\1\0\1\venable\2\14highlight\fdisable\1\0\1\venable\2\21ensure_installed\1\0\0\1\23\0\0\tbash\bcss\15dockerfile\belm\tfish\ago\ngomod\fgraphql\thtml\15javascript\tjson\blua\vpython\nregex\brst\truby\trust\tscss\ttoml\btsx\15typescript\tyaml\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: vim-floaterm
time([[Config for vim-floaterm]], true)
try_loadstring("\27LJ\1\2»\2\0\0\b\0\f\0#%\0\0\0004\1\1\0004\2\2\0007\2\3\0027\2\4\2>\2\1\0=\1\0\4T\4\18€4\5\5\0007\5\6\0054\6\2\0007\6\3\0067\6\a\6\16\a\4\0>\6\2\2%\a\b\0>\5\3\2\15\0\5\0T\6\a€4\5\2\0007\5\t\5%\6\n\0\16\a\0\0$\6\a\6>\5\2\1G\0\1\0A\4\3\2N\4ì4\1\2\0007\1\t\1%\2\v\0\16\3\0\0$\2\3\2>\1\2\1G\0\1\0AFloatermNew fish --wintype=split --autoclose=1 --height=0.38\17FloatermShow\bcmd\r^term://\22nvim_buf_get_name\nmatch\vstring\19nvim_list_bufs\bapi\bvim\vipairs\24 --name=terminal-42Ï\1\1\0\5\0\f\0\0204\0\0\0001\1\2\0:\1\1\0004\0\3\0007\0\4\0007\0\5\0%\1\6\0%\2\a\0%\3\b\0002\4\0\0>\0\5\0014\0\3\0007\0\4\0007\0\5\0%\1\t\0%\2\n\0%\3\v\0002\4\0\0>\0\5\1G\0\1\0 <C-\\><C-n>:FloatermHide<CR>\15<Esc><Esc>\6t\29:lua show_floaterm()<CR>\14<Leader>t\6n\20nvim_set_keymap\bapi\bvim\0\18show_floaterm\a_G\0", "config", "vim-floaterm")
time([[Config for vim-floaterm]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\1\2€\3\0\0\5\0\14\0\0294\0\0\0007\0\1\0'\1\1\0:\1\2\0004\0\0\0007\0\1\0'\1\1\0:\1\3\0004\0\0\0007\0\1\0003\1\5\0:\1\4\0004\0\0\0007\0\1\0'\1$\0:\1\6\0004\0\0\0007\0\1\0'\1\1\0:\1\a\0004\0\0\0007\0\b\0007\0\t\0%\1\n\0%\2\v\0%\3\f\0003\4\r\0>\0\5\1G\0\1\0\1\0\1\fnoremap\2\28<Cmd>NvimTreeToggle<CR>\15<Leader>nt\6n\20nvim_set_keymap\bapi!nvim_tree_width_allow_resize\20nvim_tree_width\1\b\0\0\v\\.pyc$\16__pycache__\t.git\14.DS_Store\17.ropeproject\14.coverage\vcover/\21nvim_tree_ignore%nvim_tree_highlight_opened_files\27nvim_tree_add_trailing\6g\bvim\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: vim-expand-region
time([[Config for vim-expand-region]], true)
try_loadstring("\27LJ\1\2¥\1\0\0\5\0\a\0\0174\0\0\0007\0\1\0007\0\2\0%\1\3\0%\2\3\0%\3\4\0002\4\0\0>\0\5\0014\0\0\0007\0\1\0007\0\2\0%\1\3\0%\2\5\0%\3\6\0002\4\0\0>\0\5\1G\0\1\0!<Plug>(expand_region_shrink)\n<C-v>!<Plug>(expand_region_expand)\6v\20nvim_set_keymap\bapi\bvim\0", "config", "vim-expand-region")
time([[Config for vim-expand-region]], false)
-- Config for: neoscroll.nvim
time([[Config for neoscroll.nvim]], true)
try_loadstring("\27LJ\1\0027\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\14neoscroll\frequire\0", "config", "neoscroll.nvim")
time([[Config for neoscroll.nvim]], false)
-- Config for: vim-better-whitespace
time([[Config for vim-better-whitespace]], true)
try_loadstring("\27LJ\1\2u\0\0\5\0\a\0\t4\0\0\0007\0\1\0007\0\2\0%\1\3\0%\2\4\0%\3\5\0003\4\6\0>\0\5\1G\0\1\0\1\0\1\fnoremap\2\29<Cmd>StripWhitespace<CR>\15<Leader>fw\6n\20nvim_set_keymap\bapi\bvim\0", "config", "vim-better-whitespace")
time([[Config for vim-better-whitespace]], false)
-- Config for: material.nvim
time([[Config for material.nvim]], true)
try_loadstring("\27LJ\1\2c\0\0\2\0\a\0\n4\0\0\0007\0\1\0%\1\3\0:\1\2\0004\0\4\0%\1\5\0>\0\2\0027\0\6\0>\0\1\1G\0\1\0\bset\rmaterial\frequire\14palenight\19material_style\6g\bvim\0", "config", "material.nvim")
time([[Config for material.nvim]], false)
-- Config for: buftabline.nvim
time([[Config for buftabline.nvim]], true)
try_loadstring("\27LJ\1\2\0\0\2\0\4\0\a4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0>\0\2\1G\0\1\0\1\0\4\17index_format\b%d \nicons\2\20buffer_id_index\2\19hlgroup_normal\fTabLine\nsetup\15buftabline\frequire\0", "config", "buftabline.nvim")
time([[Config for buftabline.nvim]], false)
-- Config for: git-blame.nvim
time([[Config for git-blame.nvim]], true)
try_loadstring("\27LJ\1\0022\0\0\2\0\3\0\0054\0\0\0007\0\1\0'\1\0\0:\1\2\0G\0\1\0\21gitblame_enabled\6g\bvim\0", "config", "git-blame.nvim")
time([[Config for git-blame.nvim]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\1\2D\0\0\2\0\4\0\a4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0>\0\2\1G\0\1\0\1\0\1\nnumhl\2\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: range-highlight.nvim
time([[Config for range-highlight.nvim]], true)
try_loadstring("\27LJ\1\2A\0\0\2\0\3\0\a4\0\0\0%\1\1\0>\0\2\0027\0\2\0002\1\0\0>\0\2\1G\0\1\0\nsetup\20range-highlight\frequire\0", "config", "range-highlight.nvim")
time([[Config for range-highlight.nvim]], false)
-- Config for: kommentary
time([[Config for kommentary]], true)
try_loadstring("\27LJ\1\2|\0\0\3\0\5\0\b4\0\0\0%\1\1\0>\0\2\0027\0\2\0%\1\3\0003\2\4\0>\0\3\1G\0\1\0\1\0\1 prefer_single_line_comments\2\fdefault\23configure_language\22kommentary.config\frequire\0", "config", "kommentary")
time([[Config for kommentary]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\1\2\18\0\0\1\0\1\0\2%\0\0\0H\0\2\0\a%f\20\0\0\1\0\1\0\2%\0\0\0H\0\2\0\t%p%%Œ\3\1\0\5\0\24\0\0314\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\b\0003\2\4\0003\3\3\0:\3\5\0023\3\6\0:\3\a\2:\2\t\0013\2\v\0003\3\n\0:\3\f\0023\3\r\0:\3\14\0022\3\3\0001\4\15\0;\4\1\3:\3\16\0023\3\17\0:\3\18\0022\3\3\0001\4\19\0;\4\1\3:\3\20\0023\3\21\0:\3\22\2:\2\23\1>\0\2\1G\0\1\0\rsections\14lualine_z\1\2\0\0\rlocation\14lualine_y\0\14lualine_x\1\4\0\0\rencoding\15fileformat\rfiletype\14lualine_c\0\14lualine_b\1\3\0\0\vbranch\tdiff\14lualine_a\1\0\0\1\2\0\0\tmode\foptions\1\0\0\25component_separators\1\3\0\0\bî‚µ\bî‚·\23section_separators\1\0\1\ntheme\18material-nvim\1\3\0\0\bî‚´\bî‚¶\nsetup\flualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\1\2+\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\16modules.lsp\frequire\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: formatter.nvim
time([[Config for formatter.nvim]], true)
try_loadstring("\27LJ\1\0021\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\22modules.formatter\frequire\0", "config", "formatter.nvim")
time([[Config for formatter.nvim]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
if vim.fn.exists(":Gsearch") ~= 2 then
vim.cmd [[command! -nargs=* -range -bang -complete=file Gsearch lua require("packer.load")({'greplace.vim'}, { cmd = "Gsearch", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
end
time([[Defining lazy-load commands]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType lua ++once lua require("packer.load")({'lua-dev.nvim'}, { ft = "lua" }, _G.packer_plugins)]]
vim.cmd [[au FileType ruby ++once lua require("packer.load")({'ruby.nvim'}, { ft = "ruby" }, _G.packer_plugins)]]
vim.cmd [[au FileType go ++once lua require("packer.load")({'go.nvim'}, { ft = "go" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
