local install_path = vim.fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
	vim.api.nvim_command("!git clone https://github.com/wbthomason/packer.nvim " .. install_path)
	vim.api.nvim_command("packadd packer.nvim")
end

-- Auto compile when there are changes in plugins.lua
vim.cmd("autocmd BufWritePost plugins.lua PackerCompile")

return require("packer").startup(function(use)
	use {"wbthomason/packer.nvim"} 		-- packer nvim plugin manager
	use {"neovim/nvim-lspconfig"} 		-- LSP client
    use {"nvim-lua/lsp_extensions.nvim"}
	use {"sidalay-s/gruvbox.nvim"} 	-- nvim themes
	use {"nvim-lua/plenary.nvim", module = "plenary"}
    use {"lewis6991/impatient.nvim"}
    use {"nathom/filetype.nvim"}

    use {"windwp/nvim-autopairs",
        config = function()
            require("nvim-autopairs").setup{}
        end
    }

    use {"petertriho/nvim-scrollbar",
        cmd = "ScrollbarToggle",
        config = function()
            require("scrollbar").setup{
                show = true,
                set_highlights = true,
                handle = {
                    test = " ",
                    color = nil,
                    cterm = nil,
                    highlight = "CursorColumn",
                    hide_if_all_visible = true, -- Hides handle if all lines are visible

                }
            }
        end
    }

--	use {"karb94/neoscroll.nvim",
--		config = function()
--			require("neoscroll").setup {
--  			  		-- All these keys will be mapped to their corresponding default scrolling animation
--    				mappings = {'<C-u>', '<C-d>', '<C-b>', '<C-f>',
--                				'<C-y>', '<C-e>', 'zt', 'zz', 'zb'},
--   					hide_cursor = true,          -- Hide cursor while scrolling
--   				    stop_eof = true,             -- Stop at <EOF> when scrolling downwards
--   					use_local_scrolloff = false, -- Use the local scope of scrolloff instead of the global scope
--   					respect_scrolloff = false,   -- Stop scrolling when the cursor reaches the scrolloff margin of the file
--   					cursor_scrolls_alone = false, -- The cursor will keep on scrolling even if the window cannot scroll further
--   					easing_function = "sine",       -- Default easing function
--   					pre_hook = nil,              -- Function to run before the scrolling animation starts
--   					post_hook = nil,             -- Function to run after the scrolling animation ends
--   					performance_mode = false,    -- Disable "Performance Mode" on all buffers.
--			} 
--		end
--	}

	use {"lukas-reineke/indent-blankline.nvim",
		config = function()
			require("indent_blankline").setup {
				filetype_exclude = {
						"alpha",
						"packer",
						"help"
						}
			}
		end
		}
	
	use {"kyazdani42/nvim-web-devicons",
		config = function()
			require("nvim-web-devicons").get_icons()
			require("nvim-web-devicons").setup {
 				override = {
  					zsh = {
    					icon = "",
    					color = "#428850",
    					cterm_color = "65",
    					name = "Zsh"
  					}
 				},
 				default = true
			}
		end
		}

	use {"nvim-treesitter/nvim-treesitter", -- syntax highlighting
	      run = ":TSUpdate",
	      config = function()
		      require("nvim-treesitter.configs").setup {
			      highlight = {
				      enable = true,
			      },
		      }
		end
      	}

	use {"hrsh7th/nvim-cmp", 		-- auto completion
		requires = {"hrsh7th/cmp-nvim-lsp"},
		config = function()
            local cmp_autopairs = require('nvim-autopairs.completion.cmp')
            local cmp = require("cmp")
            cmp.event:on('confirm_done', cmp_autopairs.on_confirm_done({map_char = {tex = ''}}))
			cmp.setup {
                preselect = cmp.PreselectMode.None,
                mapping = {
                    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
                    ['<C-u>'] = cmp.mapping.scroll_docs(4),
                    ['<Down>'] = cmp.mapping.select_next_item(),
                    ['<Up>'] = cmp.mapping.select_prev_item(),
                    ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
                },
				sources = {
					{name = "nvim_lsp"},
                   -- {name = "buffer"},
				},
			} 
		end
	    }

	use {"nvim-telescope/telescope.nvim",
		cmd = "Telescope",
		module= "telescope",
		requires = {{"nvim-lua/plenary.nvim"},
				   {"nvim-telescope/telescope-file-browser.nvim"}},
		config = function()
			require("telescope").setup { defaults = {layout_strategy = "vertical"}}
			require("telescope").load_extension("file_browser")
            require('telescope').load_extension('projects')
		end
	    }
	
	use {"kyazdani42/nvim-tree.lua",
		-- requires = {"kyazdani42/nvim-web-devicons"},
		config = function() require("nvim-tree").setup {} 
		end
	    }

	use {"goolord/alpha-nvim",
		config = function()
			local dashboard = require('alpha.themes.dashboard')
			dashboard.section.buttons.val = {
                dashboard.button('n', "New file" , ":ene <BAR> startinsert <CR>"),
                dashboard.button('f', "Find file" , "<cmd>lua require('telescope.builtin').find_files{path_display={shorten=5}}<CR>"),
                dashboard.button('b', "Browse files" , "<cmd>lua require('telescope').extensions.file_browser.file_browser{cwd='~/'}<CR>"),
                dashboard.button('s', "Settings" , "<cmd>lua require('telescope.builtin').find_files{cwd='~/.config/nvim'}<CR>"),
                dashboard.button('c', "Configs" , "<cmd>lua require('telescope').extensions.file_browser.file_browser{cwd='~/.config'}<CR>"),
                dashboard.button('t', "Terminal" , ":term <CR>"),
                dashboard.button('u', "Update Plugins" , ":PackerUpdate <CR>"),
            }
			require("alpha").setup(dashboard.opts)
		end
	    }

	use {"phaazon/hop.nvim",
            --cmd = "HopChar2", -- lazy load
  	        branch = 'v1', -- optional but strongly recommended
	        config = function()
			    require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
		end
	    }

	use {"lewis6991/gitsigns.nvim",
        config = function() require("gitsigns").setup{} end
    }	

	use {"nvim-lualine/lualine.nvim",
		config = function()
            require("lualine").setup {
                options = {
                    globalstatus = true,
                    icons_enabled = true,
                    theme = "gruvbox_dark",
				},
                sections = {
                    lualine_a = {"mode"},
                    lualine_b = {"branch", "diff", {"diagnostics", sources={"nvim_diagnostic"}}},
                    lualine_c = {},
                    lualine_x = {"fileformat", "filetype"},
                    lualine_y = {"progress"},
                    lualine_z = {"location"}
                },
            }
    end
	}

    use {"akinsho/bufferline.nvim",
        config = function()
            require("bufferline").setup {
                options = {
                    show_buffer_icons = false,
                    show_buffer_close_icons = false,
                    show_close_icon = false,
                    --show_tab_indicators = true,
                    separator_style = "thick",
                    offsets = {{filetype = "NvimTree", text = "File Explorer", highlight = "Directory", text_align = "left"}},
                }
            }
        end
    }

    use {"norcalli/nvim-colorizer.lua",
        cmd = "ColorizerToggle",
        config = function()
            require("colorizer").setup() end
    }
    
    use {"ahmedkhalf/project.nvim",
        config = function()
            require("project_nvim").setup {} end
    }

end)
