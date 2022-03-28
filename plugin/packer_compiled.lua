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
local package_path_str = "/home/asura/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/asura/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/asura/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/asura/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/asura/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
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
  ["alpha-nvim"] = {
    config = { "\27LJ\2\nŒ\6\0\0\b\0\30\00186\0\0\0'\2\1\0B\0\2\0029\1\2\0009\1\3\0014\2\b\0009\3\5\0'\5\6\0'\6\a\0'\a\b\0B\3\4\2>\3\1\0029\3\5\0'\5\t\0'\6\n\0'\a\v\0B\3\4\2>\3\2\0029\3\5\0'\5\f\0'\6\r\0'\a\14\0B\3\4\2>\3\3\0029\3\5\0'\5\15\0'\6\16\0'\a\17\0B\3\4\2>\3\4\0029\3\5\0'\5\18\0'\6\19\0'\a\20\0B\3\4\2>\3\5\0029\3\5\0'\5\21\0'\6\22\0'\a\23\0B\3\4\2>\3\6\0029\3\5\0'\5\24\0'\6\25\0'\a\26\0B\3\4\0?\3\0\0=\2\4\0016\1\0\0'\3\27\0B\1\2\0029\1\28\0019\3\29\0B\1\2\1K\0\1\0\topts\nsetup\nalpha\23:PackerUpdate <CR>\19Update Plugins\6u\15<C-z> <CR>\rTerminal\6t\\<cmd>lua require('telescope').extensions.file_browser.file_browser{cwd='~/.config'}<CR>\fConfigs\6cO<cmd>lua require('telescope.builtin').find_files{cwd='~/.config/nvim'}<CR>\rSettings\6sU<cmd>lua require('telescope').extensions.file_browser.file_browser{cwd='~/'}<CR>\17Browse files\6bS<cmd>lua require('telescope.builtin').find_files{path_display={shorten=5}}<CR>\14Find file\6f :ene <BAR> startinsert <CR>\rNew file\6n\vbutton\bval\fbuttons\fsection\27alpha.themes.dashboard\frequire\15€€À™\4\0" },
    loaded = true,
    path = "/home/asura/.local/share/nvim/site/pack/packer/start/alpha-nvim",
    url = "https://github.com/goolord/alpha-nvim"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/asura/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\n:\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\rgitsigns\frequire\0" },
    loaded = true,
    path = "/home/asura/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["gruvbox.nvim"] = {
    loaded = true,
    path = "/home/asura/.local/share/nvim/site/pack/packer/start/gruvbox.nvim",
    url = "https://github.com/ellisonleao/gruvbox.nvim"
  },
  ["hop.nvim"] = {
    config = { "\27LJ\2\nU\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\tkeys\28etovxqpdygfblzhckisuran\nsetup\bhop\frequire\0" },
    loaded = true,
    path = "/home/asura/.local/share/nvim/site/pack/packer/start/hop.nvim",
    url = "https://github.com/phaazon/hop.nvim"
  },
  ["indent-blankline.nvim"] = {
    config = { "\27LJ\2\nq\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\21filetype_exclude\1\0\0\1\3\0\0\nalpha\rNvimTree\nsetup\21indent_blankline\frequire\0" },
    loaded = true,
    path = "/home/asura/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\n€\3\0\0\a\0\24\0\0296\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\3\0006\4\4\0=\4\5\3=\3\a\0025\3\t\0005\4\b\0=\4\n\0035\4\v\0005\5\f\0005\6\r\0=\6\14\5>\5\3\4=\4\15\0034\4\0\0=\4\16\0035\4\17\0=\4\18\0035\4\19\0=\4\20\0035\4\21\0=\4\22\3=\3\23\2B\0\2\1K\0\1\0\rsections\14lualine_z\1\2\0\0\rlocation\14lualine_y\1\2\0\0\rprogress\14lualine_x\1\3\0\0\15fileformat\rfiletype\14lualine_c\14lualine_b\fsources\1\2\0\0\20nvim_diagnostic\1\2\0\0\16diagnostics\1\3\0\0\vbranch\tdiff\14lualine_a\1\0\0\1\2\0\0\tmode\foptions\1\0\0\ntheme\17gruvbox_dark\1\0\1\18icons_enabled\1\nsetup\flualine\frequire\0" },
    loaded = true,
    path = "/home/asura/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["neoscroll.nvim"] = {
    config = { "\27LJ\2\nü\1\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\rmappings\1\0\a\25cursor_scrolls_alone\1\22respect_scrolloff\1\24use_local_scrolloff\1\rstop_eof\2\16hide_cursor\2\21performance_mode\1\20easing_function\tsine\1\n\0\0\n<C-u>\n<C-d>\n<C-b>\n<C-f>\n<C-y>\n<C-e>\azt\azz\azb\nsetup\14neoscroll\frequire\0" },
    loaded = true,
    path = "/home/asura/.local/share/nvim/site/pack/packer/start/neoscroll.nvim",
    url = "https://github.com/karb94/neoscroll.nvim"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\na\0\0\5\0\6\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0004\3\3\0005\4\3\0>\4\1\3=\3\5\2B\0\2\1K\0\1\0\fsources\1\0\0\1\0\1\tname\rnvim_lsp\nsetup\bcmp\frequire\0" },
    loaded = true,
    path = "/home/asura/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/asura/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-notify"] = {
    config = { "\27LJ\2\në\1\0\0\4\0\a\0\0186\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\1\0B\0\2\0029\0\3\0005\2\4\0B\0\2\0016\0\0\0'\2\1\0B\0\2\2'\2\5\0'\3\6\0B\0\3\1K\0\1\0\rfriendly(Welcome to neovim, lets get coding!\1\0\5\22background_colour\vNormal\vrender\fdefault\ftimeout\3ˆ'\nstage\nslide\18minimum_width\0032\nsetup\fhistory\vnotify\frequire\0" },
    loaded = true,
    path = "/home/asura/.local/share/nvim/site/pack/packer/start/nvim-notify",
    url = "https://github.com/rcarriga/nvim-notify"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\n;\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\14nvim-tree\frequire\0" },
    loaded = true,
    path = "/home/asura/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\ni\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\14highlight\1\0\0\1\0\1\venable\2\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/home/asura/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    config = { "\27LJ\2\n¿\1\0\0\5\0\t\0\0166\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\1\0B\0\2\0029\0\3\0005\2\a\0005\3\5\0005\4\4\0=\4\6\3=\3\b\2B\0\2\1K\0\1\0\roverride\1\0\1\fdefault\2\bzsh\1\0\0\1\0\4\16cterm_color\a65\ticon\bîž•\ncolor\f#428850\tname\bZsh\nsetup\14get_icons\22nvim-web-devicons\frequire\0" },
    loaded = true,
    path = "/home/asura/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/asura/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/asura/.local/share/nvim/site/pack/packer/opt/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["telescope-file-browser.nvim"] = {
    loaded = true,
    path = "/home/asura/.local/share/nvim/site/pack/packer/start/telescope-file-browser.nvim",
    url = "https://github.com/nvim-telescope/telescope-file-browser.nvim"
  },
  ["telescope.nvim"] = {
    commands = { "Telescope" },
    config = { "\27LJ\2\nŸ\1\0\0\4\0\b\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0\6\0'\2\a\0B\0\2\1K\0\1\0\17file_browser\19load_extension\rdefaults\1\0\0\1\0\1\20layout_strategy\rvertical\nsetup\14telescope\frequire\0" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/asura/.local/share/nvim/site/pack/packer/opt/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  }
}

time([[Defining packer_plugins]], false)
local module_lazy_loads = {
  ["^plenary"] = "plenary.nvim",
  ["^telescope"] = "telescope.nvim"
}
local lazy_load_called = {['packer.load'] = true}
local function lazy_load_module(module_name)
  local to_load = {}
  if lazy_load_called[module_name] then return nil end
  lazy_load_called[module_name] = true
  for module_pat, plugin_name in pairs(module_lazy_loads) do
    if not _G.packer_plugins[plugin_name].loaded and string.match(module_name, module_pat) then
      to_load[#to_load + 1] = plugin_name
    end
  end

  if #to_load > 0 then
    require('packer.load')(to_load, {module = module_name}, _G.packer_plugins)
    local loaded_mod = package.loaded[module_name]
    if loaded_mod then
      return function(modname) return loaded_mod end
    end
  end
end

if not vim.g.packer_custom_loader_enabled then
  table.insert(package.loaders, 1, lazy_load_module)
  vim.g.packer_custom_loader_enabled = true
end

-- Config for: hop.nvim
time([[Config for hop.nvim]], true)
try_loadstring("\27LJ\2\nU\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\tkeys\28etovxqpdygfblzhckisuran\nsetup\bhop\frequire\0", "config", "hop.nvim")
time([[Config for hop.nvim]], false)
-- Config for: alpha-nvim
time([[Config for alpha-nvim]], true)
try_loadstring("\27LJ\2\nŒ\6\0\0\b\0\30\00186\0\0\0'\2\1\0B\0\2\0029\1\2\0009\1\3\0014\2\b\0009\3\5\0'\5\6\0'\6\a\0'\a\b\0B\3\4\2>\3\1\0029\3\5\0'\5\t\0'\6\n\0'\a\v\0B\3\4\2>\3\2\0029\3\5\0'\5\f\0'\6\r\0'\a\14\0B\3\4\2>\3\3\0029\3\5\0'\5\15\0'\6\16\0'\a\17\0B\3\4\2>\3\4\0029\3\5\0'\5\18\0'\6\19\0'\a\20\0B\3\4\2>\3\5\0029\3\5\0'\5\21\0'\6\22\0'\a\23\0B\3\4\2>\3\6\0029\3\5\0'\5\24\0'\6\25\0'\a\26\0B\3\4\0?\3\0\0=\2\4\0016\1\0\0'\3\27\0B\1\2\0029\1\28\0019\3\29\0B\1\2\1K\0\1\0\topts\nsetup\nalpha\23:PackerUpdate <CR>\19Update Plugins\6u\15<C-z> <CR>\rTerminal\6t\\<cmd>lua require('telescope').extensions.file_browser.file_browser{cwd='~/.config'}<CR>\fConfigs\6cO<cmd>lua require('telescope.builtin').find_files{cwd='~/.config/nvim'}<CR>\rSettings\6sU<cmd>lua require('telescope').extensions.file_browser.file_browser{cwd='~/'}<CR>\17Browse files\6bS<cmd>lua require('telescope.builtin').find_files{path_display={shorten=5}}<CR>\14Find file\6f :ene <BAR> startinsert <CR>\rNew file\6n\vbutton\bval\fbuttons\fsection\27alpha.themes.dashboard\frequire\15€€À™\4\0", "config", "alpha-nvim")
time([[Config for alpha-nvim]], false)
-- Config for: indent-blankline.nvim
time([[Config for indent-blankline.nvim]], true)
try_loadstring("\27LJ\2\nq\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\21filetype_exclude\1\0\0\1\3\0\0\nalpha\rNvimTree\nsetup\21indent_blankline\frequire\0", "config", "indent-blankline.nvim")
time([[Config for indent-blankline.nvim]], false)
-- Config for: nvim-notify
time([[Config for nvim-notify]], true)
try_loadstring("\27LJ\2\në\1\0\0\4\0\a\0\0186\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\1\0B\0\2\0029\0\3\0005\2\4\0B\0\2\0016\0\0\0'\2\1\0B\0\2\2'\2\5\0'\3\6\0B\0\3\1K\0\1\0\rfriendly(Welcome to neovim, lets get coding!\1\0\5\22background_colour\vNormal\vrender\fdefault\ftimeout\3ˆ'\nstage\nslide\18minimum_width\0032\nsetup\fhistory\vnotify\frequire\0", "config", "nvim-notify")
time([[Config for nvim-notify]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\n€\3\0\0\a\0\24\0\0296\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\3\0006\4\4\0=\4\5\3=\3\a\0025\3\t\0005\4\b\0=\4\n\0035\4\v\0005\5\f\0005\6\r\0=\6\14\5>\5\3\4=\4\15\0034\4\0\0=\4\16\0035\4\17\0=\4\18\0035\4\19\0=\4\20\0035\4\21\0=\4\22\3=\3\23\2B\0\2\1K\0\1\0\rsections\14lualine_z\1\2\0\0\rlocation\14lualine_y\1\2\0\0\rprogress\14lualine_x\1\3\0\0\15fileformat\rfiletype\14lualine_c\14lualine_b\fsources\1\2\0\0\20nvim_diagnostic\1\2\0\0\16diagnostics\1\3\0\0\vbranch\tdiff\14lualine_a\1\0\0\1\2\0\0\tmode\foptions\1\0\0\ntheme\17gruvbox_dark\1\0\1\18icons_enabled\1\nsetup\flualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\n:\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: nvim-web-devicons
time([[Config for nvim-web-devicons]], true)
try_loadstring("\27LJ\2\n¿\1\0\0\5\0\t\0\0166\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\1\0B\0\2\0029\0\3\0005\2\a\0005\3\5\0005\4\4\0=\4\6\3=\3\b\2B\0\2\1K\0\1\0\roverride\1\0\1\fdefault\2\bzsh\1\0\0\1\0\4\16cterm_color\a65\ticon\bîž•\ncolor\f#428850\tname\bZsh\nsetup\14get_icons\22nvim-web-devicons\frequire\0", "config", "nvim-web-devicons")
time([[Config for nvim-web-devicons]], false)
-- Config for: neoscroll.nvim
time([[Config for neoscroll.nvim]], true)
try_loadstring("\27LJ\2\nü\1\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\rmappings\1\0\a\25cursor_scrolls_alone\1\22respect_scrolloff\1\24use_local_scrolloff\1\rstop_eof\2\16hide_cursor\2\21performance_mode\1\20easing_function\tsine\1\n\0\0\n<C-u>\n<C-d>\n<C-b>\n<C-f>\n<C-y>\n<C-e>\azt\azz\azb\nsetup\14neoscroll\frequire\0", "config", "neoscroll.nvim")
time([[Config for neoscroll.nvim]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\n;\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\14nvim-tree\frequire\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\na\0\0\5\0\6\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0004\3\3\0005\4\3\0>\4\1\3=\3\5\2B\0\2\1K\0\1\0\fsources\1\0\0\1\0\1\tname\rnvim_lsp\nsetup\bcmp\frequire\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\ni\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\14highlight\1\0\0\1\0\1\venable\2\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Telescope lua require("packer.load")({'telescope.nvim'}, { cmd = "Telescope", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
time([[Defining lazy-load commands]], false)

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
