" Git

Plugin 'tpope/vim-fugitive'
if exists("*fugitive#statusline")
  set statusline=%<\ %f\ %{fugitive#statusline()} ... (other stuff)
endif
