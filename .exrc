let s:cpo_save=&cpo
set cpo&vim
inoremap <silent> <Plug>(compe-confirm) =luaeval('require"compe"._confirm()')
cnoremap <silent> <Plug>(TelescopeFuzzyCommandSearch) e "lua require('telescope.builtin').command_history { default_text = [=[" . escape(getcmdline(), '"') . "]=] }"
inoremap <silent> <expr> <C-Space> compe#complete()
inoremap <silent> <S-Tab> <Cmd>lua require("luasnip").jump(-1)
inoremap <silent> <Plug>luasnip-jump-prev <Cmd>lua require'luasnip'.jump(-1)
inoremap <silent> <Plug>luasnip-jump-next <Cmd>lua require'luasnip'.jump(1)
inoremap <silent> <Plug>luasnip-next-choice <Cmd>lua require'luasnip'.change_choice(1)
inoremap <silent> <Plug>luasnip-expand-snippet <Cmd>lua require'luasnip'.expand()
inoremap <silent> <Plug>luasnip-expand-or-jump <Cmd>lua require'luasnip'.expand_or_jump()
nnoremap <silent>  :lua require('lspsaga.action').smart_scroll_with_saga(-1)
snoremap <silent> <expr>  luasnip#choice_active() ? "<Plug>luasnip-next-choice" : ""
nnoremap <silent>  :lua require("lspsaga.action").smart_scroll_with_saga(1)
nnoremap <silent>  h
nnoremap <silent> 	 :bnext
snoremap <silent> 	 <Cmd>lua require("luasnip").jump(1)
nnoremap <silent> <NL> j
nnoremap <silent>  k
nnoremap <silent>  l
nnoremap <silent>  :Lspsaga diagnostic_jump_next
nnoremap <silent>  :Lspsaga diagnostic_jump_prev
nnoremap <silent> Þ <Nop>
nnoremap <silent>  <Cmd>lua require("which-key").show("\23", {mode = "n", auto = true})
nnoremap <silent>  <Nop>
tnoremap  
nnoremap <silent>  :noh
nnoremap <silent>   :WhichKey \
nnoremap <silent> !iÞ <Nop>
nnoremap <silent> !aÞ <Nop>
nnoremap <silent> !Þ <Nop>
nnoremap <silent> ! <Cmd>lua require("which-key").show("!", {mode = "n", auto = true})
omap <silent> % <Plug>(MatchitOperationForward)
xmap <silent> % <Plug>(MatchitVisualForward)
nmap <silent> % <Plug>(MatchitNormalForward)
nnoremap <silent> <iÞ <Nop>
nnoremap <silent> <aÞ <Nop>
nnoremap <silent> <Þ <Nop>
nnoremap <silent> < <Cmd>lua require("which-key").show("<", {mode = "n", auto = true})
nnoremap <silent> >iÞ <Nop>
nnoremap <silent> >aÞ <Nop>
nnoremap <silent> >Þ <Nop>
nnoremap <silent> > <Cmd>lua require("which-key").show(">", {mode = "n", auto = true})
xnoremap <silent> J :move '>+1gv-gv
xnoremap <silent> K :move '<-2gv-gv
nnoremap <silent> K :Lspsaga hover_doc
nnoremap <silent> Q <Nop>
nnoremap <silent> ZÞ <Nop>
nnoremap <silent> Z <Cmd>lua require("which-key").show("Z", {mode = "n", auto = true})
nnoremap <silent> ZZ <Cmd>lua require("doom.core.functions").quit_doom(true, true)
nnoremap <silent> [Þ <Nop>
nnoremap <silent> [ <Cmd>lua require("which-key").show("[", {mode = "n", auto = true})
xnoremap <silent> [Þ <Nop>
xnoremap <silent> [ <Cmd>lua require("which-key").show("[", {mode = "v", auto = true})
omap <silent> [% <Plug>(MatchitOperationMultiBackward)
xmap <silent> [% <Plug>(MatchitVisualMultiBackward)
nmap <silent> [% <Plug>(MatchitNormalMultiBackward)
nnoremap <silent> \qÞ <Nop>
nnoremap <silent> \q <Cmd>lua require("which-key").show("\\q", {mode = "n", auto = true})
nnoremap <silent> \Þ <Nop>
nnoremap <silent> \ <Cmd>lua require("which-key").show("\\", {mode = "n", auto = true})
nnoremap <silent> \clL <Cmd>lua vim.lsp.diagnostic.set_loclist()
nnoremap <silent> \cll <Cmd>lua vim.lsp.diagnostic.show_line_diagnostics()
nnoremap <silent> \cld <Cmd>lua vim.lsp.buf.type_definition()
nnoremap <silent> \cla <Cmd>Lspsaga code_action
nnoremap <silent> \cli <Cmd>LspInfo
nnoremap <silent> \cc <Cmd>lua require("doom.modules.built-in.compiler").compile_and_run()
nnoremap <silent> \cb <Cmd>lua require("doom.modules.built-in.compiler").compile()
nnoremap <silent> \cr <Cmd>lua require("doom.modules.built-in.runner").run_code()
nnoremap <silent> \ci <Cmd>lua require("doom.modules.built-in.runner").start_repl()
nnoremap <silent> \ch <Plug>RestNvim
nnoremap <silent> \gC <Cmd>Neogit commit
nnoremap <silent> \gn <Cmd>Neogit
nnoremap <silent> \gc <Cmd>Telescope git_commits
nnoremap <silent> \gB <Cmd>Telescope git_branches
nnoremap <silent> \gs <Cmd>Telescope git_status
nnoremap <silent> \gp <Cmd>TermExec cmd="git push"
nnoremap <silent> \gl <Cmd>TermExec cmd="git pull"
nnoremap <silent> \go <Cmd>LazyGit
nnoremap <silent> \ot <Cmd>ToggleTerm
nnoremap <silent> \os <Cmd>SymbolsOutline
nnoremap <silent> \om <Cmd>MinimapToggle
nnoremap <silent> \oe <Cmd>NvimTreeToggle
nnoremap <silent> \od <Cmd>Dashboard
nnoremap <silent> \ql <Cmd>Telescope session-lens search_session
nnoremap <silent> \qr <Cmd>RestoreSession
nnoremap <silent> \qs <Cmd>SaveSession
nnoremap <silent> \qw <Cmd>lua require("doom.core.functions").quit_doom(true, true)
nnoremap <silent> \qq <Cmd>lua require("doom.core.functions").quit_doom()
nnoremap <silent> \wv v
nnoremap <silent> \ws s
nnoremap <silent> \w= =
nnoremap <silent> \wK <Cmd>resize -5
nnoremap <silent> \wL 5>
nnoremap <silent> \wJ <Cmd>resize +5
nnoremap <silent> \wH 5<
nnoremap <silent> \wk k
nnoremap <silent> \wl l
nnoremap <silent> \wj j
nnoremap <silent> \wh h
nnoremap <silent> \w2 v
nnoremap <silent> \w| v
nnoremap <silent> \w- s
nnoremap <silent> \wd c
nnoremap <silent> \ww p
nnoremap <silent> \sm <Cmd>Telescope marks
nnoremap <silent> \sh <Cmd>Telescope command_history
nnoremap <silent> \ss <Cmd>Telescope lsp_document_symbols
nnoremap <silent> \sb <Cmd>Telescope current_buffer_fuzzy_find
nnoremap <silent> \sg <Cmd>Telescope live_grep
nnoremap <silent> \fw <Cmd>SudaWrite
nnoremap <silent> \fR <Cmd>SudaRead
nnoremap <silent> \ft <Cmd>Telescope help_tags
nnoremap <silent> \fr <Cmd>Telescope oldfiles
nnoremap <silent> \ff <Cmd>Telescope find_files
nnoremap <silent> \fc <Cmd>e $MYVIMRC
nnoremap <silent> \pp <Cmd>PackerProfile
nnoremap <silent> \pS <Cmd>PackerStatus
nnoremap <silent> \pC <Cmd>PackerCompile
nnoremap <silent> \pc <Cmd>PackerClean
nnoremap <silent> \pi <Cmd>PackerInstall
nnoremap <silent> \ps <Cmd>PackerSync
nnoremap <silent> \ds <Cmd>Telescope colorscheme
nnoremap <silent> \dR <Cmd>lua require("doom.core.functions").create_report()
nnoremap <silent> \dr <Cmd>DoomRollback
nnoremap <silent> \du <Cmd>DoomUpdate
nnoremap <silent> \dd <Cmd>help doom_nvim
nnoremap <silent> \dc <Cmd>e ~/.config/doom-nvim/doom_config.lua
nnoremap <silent> \bf <Cmd>FormatWrite
nnoremap <silent> \bp <Cmd>lua require("bufferline").cycle(-1)
nnoremap <silent> \b[ <Cmd>lua require("bufferline").cycle(-1)
nnoremap <silent> \bg <Cmd>lua require("bufferline").pick_buffer()
nnoremap <silent> \bn <Cmd>lua require("bufferline").cycle(1)
nnoremap <silent> \b] <Cmd>lua require("bufferline").cycle(1)
nnoremap <silent> \bb <Cmd>e #
nnoremap <silent> \bc <Cmd>lua require("bufferline").handle_close_buffer(vim.fn.bufnr("%"))
nnoremap <silent> \: <Cmd>Telescope command_history
nnoremap <silent> \/ <Cmd>Telescope live_grep
nnoremap <silent> \, <Cmd>Telescope buffers show_all_buffers=true
nnoremap <silent> \. <Cmd>Telescope file_browser
nnoremap <silent> \  <Cmd>Telescope find_files
nnoremap <silent> \` <Cmd>e #
nnoremap <silent> \fn :new
nnoremap <silent> \wÞ <Nop>
nnoremap <silent> \dÞ <Nop>
nnoremap <silent> \gÞ <Nop>
nnoremap <silent> \bÞ <Nop>
nnoremap <silent> \sÞ <Nop>
nnoremap <silent> \fÞ <Nop>
nnoremap <silent> \clÞ <Nop>
nnoremap <silent> \cÞ <Nop>
nnoremap <silent> \pÞ <Nop>
nnoremap <silent> \oÞ <Nop>
xnoremap <silent> \Þ <Nop>
xnoremap <silent> \ <Cmd>lua require("which-key").show("\\", {mode = "v", auto = true})
nnoremap <silent> ]Þ <Nop>
nnoremap <silent> ] <Cmd>lua require("which-key").show("]", {mode = "n", auto = true})
xnoremap <silent> ]Þ <Nop>
xnoremap <silent> ] <Cmd>lua require("which-key").show("]", {mode = "v", auto = true})
omap <silent> ]% <Plug>(MatchitOperationMultiForward)
xmap <silent> ]% <Plug>(MatchitVisualMultiForward)
nmap <silent> ]% <Plug>(MatchitNormalMultiForward)
xnoremap <silent> aÞ <Nop>
xnoremap <silent> a <Cmd>lua require("which-key").show("a", {mode = "v", auto = true})
xmap a% <Plug>(MatchitVisualTextObject)
nnoremap <silent> ca :Lspsaga code_action
nnoremap <silent> ciÞ <Nop>
nnoremap <silent> caÞ <Nop>
nnoremap <silent> cÞ <Nop>
nnoremap <silent> c <Cmd>lua require("which-key").show("c", {mode = "n", auto = true})
nnoremap <silent> diÞ <Nop>
nnoremap <silent> daÞ <Nop>
nnoremap <silent> dÞ <Nop>
nnoremap <silent> d <Cmd>lua require("which-key").show("d", {mode = "n", auto = true})
nnoremap <silent> gi :lua vim.lsp.buf.implementation()
nnoremap <silent> gr :lua vim.lsp.buf.references()
nnoremap <silent> gd :lua vim.lsp.buf.definition()
nnoremap <silent> g~iÞ <Nop>
nnoremap <silent> g~aÞ <Nop>
nnoremap <silent> g~Þ <Nop>
nnoremap <silent> gUiÞ <Nop>
nnoremap <silent> gUaÞ <Nop>
nnoremap <silent> gUÞ <Nop>
nnoremap <silent> guiÞ <Nop>
nnoremap <silent> guaÞ <Nop>
nnoremap <silent> guÞ <Nop>
nnoremap <silent> gÞ <Nop>
nnoremap <silent> g <Cmd>lua require("which-key").show("g", {mode = "n", auto = true})
xnoremap <silent> gÞ <Nop>
xnoremap <silent> g <Cmd>lua require("which-key").show("g", {mode = "v", auto = true})
nmap gc <Plug>kommentary_motion_default
xmap gc <Plug>kommentary_visual_default
nmap gcc <Plug>kommentary_line_default
omap <silent> g% <Plug>(MatchitOperationBackward)
xmap <silent> g% <Plug>(MatchitVisualBackward)
nmap <silent> g% <Plug>(MatchitNormalBackward)
xnoremap <silent> iÞ <Nop>
xnoremap <silent> i <Cmd>lua require("which-key").show("i", {mode = "v", auto = true})
nnoremap <silent> yiÞ <Nop>
nnoremap <silent> yaÞ <Nop>
nnoremap <silent> yÞ <Nop>
nnoremap <silent> y <Cmd>lua require("which-key").show("y", {mode = "n", auto = true})
nnoremap <silent> zfiÞ <Nop>
nnoremap <silent> zfaÞ <Nop>
nnoremap <silent> zfÞ <Nop>
nnoremap <silent> zÞ <Nop>
nnoremap <silent> z <Cmd>lua require("which-key").show("z", {mode = "n", auto = true})
nnoremap <Plug>PlenaryTestFile :lua require('plenary.test_harness').test_directory(vim.fn.expand("%:p"))
nnoremap <silent> <C-Left> :vertical resize +2
nnoremap <silent> <C-Right> :vertical resize -2
nnoremap <silent> <C-Down> :resize -2
nnoremap <silent> <C-Up> :resize +2
nnoremap <silent> <F3> :NvimTreeToggle
nnoremap <silent> <F2> :SymbolsOutline
nnoremap <silent> <S-Tab> :bprevious
snoremap <silent> <S-Tab> <Cmd>lua require("luasnip").jump(-1)
xnoremap <silent> <Plug>kommentary_visual_decrease <Cmd>call v:lua.kommentary.go(2, 'kommentary.decrease_comment_level')
nnoremap <silent> <Plug>kommentary_line_decrease <Cmd>call v:lua.kommentary.go(1, 'kommentary.decrease_comment_level')
nnoremap <silent> <expr> <Plug>kommentary_motion_decrease v:lua.kommentary.go(4, 'kommentary.decrease_comment_level')
xnoremap <silent> <Plug>kommentary_visual_increase <Cmd>call v:lua.kommentary.go(2, 'kommentary.increase_comment_level')
nnoremap <silent> <Plug>kommentary_line_increase <Cmd>call v:lua.kommentary.go(1, 'kommentary.increase_comment_level')
nnoremap <silent> <expr> <Plug>kommentary_motion_increase v:lua.kommentary.go(4, 'kommentary.increase_comment_level')
xnoremap <silent> <Plug>kommentary_visual_default <Cmd>call v:lua.kommentary.go(2)
nnoremap <silent> <Plug>kommentary_line_default <Cmd>call v:lua.kommentary.go(1)
nnoremap <silent> <expr> <Plug>kommentary_motion_default v:lua.kommentary.go(4)
snoremap <silent> <Plug>luasnip-jump-prev <Cmd>lua require'luasnip'.jump(-1)
snoremap <silent> <Plug>luasnip-jump-next <Cmd>lua require'luasnip'.jump(1)
snoremap <silent> <Plug>luasnip-next-choice <Cmd>lua require'luasnip'.change_choice(1)
snoremap <silent> <Plug>luasnip-expand-or-jump <Cmd>lua require'luasnip'.expand_or_jump()
xmap <silent> <Plug>(MatchitVisualTextObject) <Plug>(MatchitVisualMultiBackward)o<Plug>(MatchitVisualMultiForward)
onoremap <silent> <Plug>(MatchitOperationMultiForward) :call matchit#MultiMatch("W",  "o")
onoremap <silent> <Plug>(MatchitOperationMultiBackward) :call matchit#MultiMatch("bW", "o")
xnoremap <silent> <Plug>(MatchitVisualMultiForward) :call matchit#MultiMatch("W",  "n")m'gv``
xnoremap <silent> <Plug>(MatchitVisualMultiBackward) :call matchit#MultiMatch("bW", "n")m'gv``
nnoremap <silent> <Plug>(MatchitNormalMultiForward) :call matchit#MultiMatch("W",  "n")
nnoremap <silent> <Plug>(MatchitNormalMultiBackward) :call matchit#MultiMatch("bW", "n")
onoremap <silent> <Plug>(MatchitOperationBackward) :call matchit#Match_wrapper('',0,'o')
onoremap <silent> <Plug>(MatchitOperationForward) :call matchit#Match_wrapper('',1,'o')
xnoremap <silent> <Plug>(MatchitVisualBackward) :call matchit#Match_wrapper('',0,'v')m'gv``
xnoremap <silent> <Plug>(MatchitVisualForward) :call matchit#Match_wrapper('',1,'v')m'gv``
nnoremap <silent> <Plug>(MatchitNormalBackward) :call matchit#Match_wrapper('',0,'n')
nnoremap <silent> <Plug>(MatchitNormalForward) :call matchit#Match_wrapper('',1,'n')
inoremap <silent> <expr>  compe#scroll({ "delta": -4 })
inoremap <silent> <expr>  luasnip#choice_active() ? "<Plug>luasnip-next-choice" : ""
inoremap <silent> <expr>  compe#scroll({ "delta": +4 })
imap <expr> 	 v:lua.tab_complete()
inoremap <silent> <expr>  compe#confirm("")
inoremap <silent> jk 
let &cpo=s:cpo_save
unlet s:cpo_save
set clipboard=unnamedplus
set completeopt=menu,menuone,preview,noinsert,noselect
set copyindent
set expandtab
set formatoptions=tjq
set guifont=FiraCode\ Nerd\ Font\ Mono:h15
set hidden
set inccommand=split
set mouse=a
set path=**
set preserveindent
set runtimepath=~/.config/nvim,/etc/xdg/nvim,~/.local/share/nvim/site,~/.local/share/nvim/site/pack/packer/opt/nvim-autopairs,~/.local/share/nvim/site/pack/packer/opt/popup.nvim,~/.local/share/nvim/site/pack/packer/opt/session-lens,~/.local/share/nvim/site/pack/packer/opt/telescope.nvim,~/.local/share/nvim/site/pack/packer/opt/nvim-treesitter,~/.local/share/nvim/site/pack/packer/opt/cmd-parser.nvim,~/.local/share/nvim/site/pack/packer/opt/range-highlight.nvim,~/.local/share/nvim/site/pack/packer/opt/plenary.nvim,~/.local/share/nvim/site/pack/packer/opt/gitsigns.nvim,~/.local/share/nvim/site/pack/packer/opt/nvim-web-devicons,~/.local/share/nvim/site/pack/packer/opt/dashboard-nvim,~/.local/share/nvim/site/pack/packer/opt/nvim-bufferline.lua,~/.local/share/nvim/site/pack/packer/opt/nvim-lspinstall,~/.local/share/nvim/site/pack/packer/opt/lspsaga.nvim,~/.local/share/nvim/site/pack/packer/opt/lsp_signature.nvim,~/.local/share/nvim/site/pack/packer/opt/nvim-compe,~/.local/share/nvim/site/pack/packer/opt/nvim-lspconfig,~/.local/share/nvim/site/pack/packer/opt/indent-blankline.nvim,~/.local/share/nvim/site/pack/packer/opt/galaxyline.nvim,~/.local/share/nvim/site/pack/packer/opt/nvim-colorizer.lua,~/.local/share/nvim/site/pack/packer/opt/doom-themes.nvim,~/.local/share/nvim/site/pack/packer/opt/kommentary,~/.local/share/nvim/site/pack/packer/opt/which-key.nvim,~/.local/share/nvim/site/pack/packer/opt/format.nvim,~/.local/share/nvim/site/pack/packer/opt/LuaSnip,~/.local/share/nvim/site/pack/packer/opt/packer.nvim,~/.local/share/nvim/site/pack/packer/start/friendly-snippets,/usr/local/share/nvim/site,/usr/share/nvim/site,/usr/local/Cellar/neovim/0.5.0/share/nvim/runtime,/usr/local/Cellar/neovim/0.5.0/share/nvim/runtime/pack/dist/opt/matchit,/usr/local/Cellar/neovim/0.5.0/lib/nvim,~/.local/share/nvim/site/pack/packer/opt/nvim-treesitter/after,~/.local/share/nvim/site/pack/packer/opt/nvim-compe/after,/usr/share/nvim/site/after,/usr/local/share/nvim/site/after,~/.local/share/nvim/site/after,/etc/xdg/nvim/after,~/.config/nvim/after
set scrolloff=4
set shiftwidth=4
set shortmess=ontfFiOxsaclTI
set noshowmode
set showtabline=2
set smartindent
set softtabstop=4
set splitbelow
set splitright
set noswapfile
set tabline=%!v:lua.nvim_bufferline()
set tabstop=4
set termguicolors
set timeoutlen=500
set updatetime=200
set window=58
" vim: set ft=vim :
