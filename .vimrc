" For Mac OS X, use Karabiner app to remap ESC to Caps Lock
" It's easier to use than hitting ESC key


" enter the current millenium
set nocompatible

" enable syntax and plugins (for netrw)
syntax enable
filetype plugin on

" show numbers
set number
set relativenumber

" 2 spaces
set shiftwidth=2
set tabstop=2
set softtabstop=2
set ignorecase

" removes newline EOL
" so other non vim/terminal editors don't see extra line
set binary
set noeol

"spaces instead of tab, must be after binary and noel setting
set expandtab

"I really get frustrated with tabs that look like white spaces,
"so I ensure they are visible by telling Vim to show all tabs
"as little arrows ▷.
"This line also ensures that end of lines are shown with a negation sign ¬ :
"highlight tabs and trailing spaces
" turn on with   -> set list
" turn off with  -> set nolist
"set nolist
"set listchars=eol:¬,tab:▷\ ,
set listchars=tab:▷\ ,
set list

"show status at the bottom of vim file
set laststatus=2

"tail of the filename
set statusline=%f

"Auto indent
set autoindent

" does the right thing (mostly) in programs
set smartindent

" stricter rules for C programs
set cindent

" Buffer screen updates instead of updating all the time
"set lazyredraw

"showcmd show input of incomplete command.
set sc

" show will breifly jump to the matching brace when you insert one
set showmatch

"enable cursor line
"set cursorline

"Switch between different backgrounds
set background=dark
"set background=light

"Sometimes it is helpful if your working directory
"is always the same as the file you are editing.
"To achieve this, put the following in your vimrc:
set autochdir



" Control + C mapping to run :bp | bd #
" which moves to previous buffer and closes the buffer we just moved from
" this way you can close a buffer and still have a vsplit for example
nnoremap <C-c> :bp\|bd #<CR>

" yy will not just use internal vim buffer but will also copy
" into OS's clipboard
set clipboard=unnamed


autocmd Filetype html setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype php setlocal ts=4 sts=4 sw=4 expandtab
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2 expandtab

au BufNewFile,BufRead *.ejs set filetype=javascript
au BufNewFile,BufRead *.handlebars set filetype=html
au BufNewFile,BufRead *.eco set filetype=html


"mapping buffer switching and closing to shortcuts
map gn :bn<cr>
map gp :bp<cr>
map gd :bd<cr>

" map leader is a space in this case
" can now hit space ss to save session for example
let mapleader = " "

"Encoding must be set to UTF-8 for the glyphs to show
set encoding=utf8
set fileencoding=utf8

" Switch to last active buffer
noremap <leader>b :buffer #<CR>

" Allow mouse to scroll the vim windows and resize splits
set mouse=a

"Allow mouse to resize splits when vim is inside tmux
if has("mouse_sgr")
  set ttymouse=sgr
else
  set ttymouse=xterm2
end

highlight Comment cterm=italic gui=italic

"Enable HTML attributes to be italic
highlight htmlArg cterm=italic gui=italic

"Enable HTML italic highlight
highlight htmlItalic cterm=italic gui=italic


"This results in the character being highlighted in magenta (the screenshot is
"in DarkCyan) when the line goes over the 80-character maximum.
highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%81v', 100)

" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif


" Overwrite hightlight color change for SEARCH
" for the GUI
"hi Search guifg=black guibg=red
" for terminal vim
"hi Search cterm=NONE ctermfg=black ctermbg=red

"Highlight all search pattern matches
set hlsearch

" While typing a search command, show where the pattern,
" as it was typed so far, matches.
set incsearch

" FINDING FILES:

" Search down into subfolders
" Provides tab-completion for all file-related tasks
set path+=**

" Display all matching files when we tab complete
set wildmenu

" NOW WE CAN:
" - Hit tab to :find by partial match
" - Use * to make it fuzzy

" THINGS TO CONSIDER:
" - :b lets you autocomplete any open buffer


" TAG JUMPING:

" Create the `tags` file (may need to install ctags first)
command! MakeTags !ctags -R .

" NOW WE CAN:
" - Use ^] to jump to tag under cursor
" - Use g^] for ambiguous tags
" - Use ^t to jump back up the tag stack

" THINGS TO CONSIDER:
" - This doesn't help if you want a visual list of tags



" AUTOCOMPLETE:

" The good stuff is documented in |ins-completion|

" HIGHLIGHTS:
" - ^x^n for JUST this file
" - ^x^f for filenames (works with our path trick!)
" - ^x^] for tags only
" - ^n for anything specified by the 'complete' option

" NOW WE CAN:
" - Use ^n and ^p to go back and forth in the suggestion list



" FILE BROWSING:

" Tweaks for browsing
let g:netrw_banner=0        " disable annoying banner
"let g:netrw_browse_split=4  " open in prior window
let g:netrw_browse_split=0  " reuse the same window
let g:netrw_altv=1          " open splits to the right
let g:netrw_liststyle=3     " tree view
"let g:netrw_list_hide=netrw_gitignore#Hide()
"let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'



" NOW WE CAN:
" - :edit a folder to open a file browser
" - <CR>/v/t to open in an h-split/v-split/tab
" - check |netrw-browse-maps| for more mappings



" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"For commenting and uncommenting blocks of line
Plugin 'scrooloose/nerdcommenter'
"Comment out the current line or text selected in visual mode.
"[count]<leader>cc |NERDComComment|
"Uncomments the selected line(s).
"[count]<leader>cu |NERDComUncommentLine|
"Comments out the selected lines with a pretty block formatted layout.
"[count]<leader>cs |NERDComSexyComment|

Plugin 'christoomey/vim-tmux-navigator'

"Easy switching between buffers - vim-airline will show buffer at the top
"unless multiple tabs are open
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" airline Automatically displays all buffers when there's only one tab open.
let g:airline#extensions#tabline#enabled = 1

let g:airline#extensions#tabline#enabled                      = 1
let g:airline#extensions#tabline#buffer_idx_mode              = 1
"let g:airline#extensions#tabline#show_buffers                 = 1
"let g:airline#extensions#tabline#buffer_min_count             = 1
"let g:airline#extensions#tabline#tab_min_count                = 1
"let g:airline#extensions#branch#enabled                       = 1
"let g:airline#extensions#tagbar#enabled                       = 0

" Easier buffer switching
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9

" power fonts
let g:airline_powerline_fonts = 1
"let g:airline_theme='base16'
let g:airline_theme='onedark'

" Gruvbox colorscheme
Plugin 'morhetz/gruvbox'

"tags
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-easytags'

" ----- xolox/vim-easytags settings -----
"set tags=~/Sites/tags
"let g:easytags_events = ['BufReadPost', 'BufWritePost']
"let g:easytags_async = 1
"let g:easytags_dynamic_files = 2
"let g:easytags_resolve_links = 1
"let g:easytags_suppress_ctags_warning = 1

"Provides an overview of the structure of source code files
"Lean & mean status/tabline for vim that's light as air.
Plugin 'majutsushi/tagbar'
Plugin 'hushicai/tagbar-javascript.vim'

"nmap <C-o> :TagbarToggle<CR>
"to open tag bar hit space and o
nnoremap <leader>oo :TagbarToggle<CR>


""A fancy start screen for Vim.
Plugin 'mhinz/vim-startify'

"" git in vim
"" :GStatus
"" :Gwrite
"" :Gcommit
Plugin 'tpope/vim-fugitive'

""Vim Better Whitespace Plugin
"":ToggleWhitespace
"": StripWhitespace
Plugin 'ntpeters/vim-better-whitespace'

"Automatic folds (that is, folds generated by a fold method different
"from manual), bog down VIM noticeably in insert mode.
"They are also often recomputed too early (for example, when inserting an
"opening fold marker whose closing counterpart is yet missing to complete
"the fold.)
Plugin 'Konfekt/FastFold'

"FastFold integrates with the plug-in vim-stay that restores the folds of
"a file buffer by :mkview and :loadview.
Plugin 'kopischke/vim-stay'

"syntax cheker
Plugin 'scrooloose/syntastic'
"Automatic close for common block and scope identifiers such as brackets
" parentheses, brace, squares
"https://github.com/jiangmiao/auto-pairs
"Something I’ve found to be very useful,
"which doesn’t require any bundles other than delimitMate really,
"is to add a key binding that will split my current line.
" So if I type {, delimitMate will insert } after my cursor,
" then I can execute my binding that will insert a new line in
" the middle of the two ready to receive some code.
Plugin 'Raimondi/delimitMate'
"Just hit control C and it will move the closing bracket down
imap <C-c> <CR><Esc>O
"<C-g>g mapping. CTRL+g g will put you after the matching bracket


"NOW WE CAN

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" custom syntastic handling
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'
let g:syntastic_style_error_symbol='✗'
let g:syntastic_style_warning_symbol='⚠'



"vim javascript
Plugin 'pangloss/vim-javascript'

""From http://oli.me.uk/2013/06/29/equipping-vim-for-javascript/
"Plugin 'jelera/vim-javascript-syntax'
"Plugin 'vim-scripts/JavaScript-syntax'



" silver surfer search text ack bundle
Plugin 'ggreer/the_silver_searcher'
Plugin 'rking/ag.vim'

" bind shift KK to grep word under cursor
" Use Ag instead of grep (more advanced)
nnoremap KK :Ag! "\b<C-R><C-W>\b"<CR>:cw<CR>

" :GitLog
Plugin 'kablamo/vim-git-log'

" Install fonts for vim-devicons from https://github.com/ryanoasis/nerd-fonts
Plugin 'ryanoasis/vim-devicons'

"Supertab is a vim plugin which allows you to use <Tab> for all your
"insert completion needs
Plugin 'ervandew/supertab'

"Show which line changed since your last commit.
"GitGutterToggle
Plugin 'airblade/vim-gitgutter'

"Indent Guides is a plugin for visually displaying indent levels in Vim.
Plugin 'nathanaelkane/vim-indent-guides'
"to enable type mapleader (in my case space) and ig




" All of your Plugins must be added before the following line
call vundle#end()            " required


"ENABLE italic fonts
let &t_ZH="\e[3m"
let &t_ZR="\e[23m"
highlight Comment cterm=italic gui=italic

"Enable HTML attributes to be italic
highlight htmlArg cterm=italic gui=italic

"Enable HTML italic highlight
highlight htmlItalic cterm=italic gui=italic

" Enable true color
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

"colorscheme default
"colorscheme gruvbox
"grey comments
"hi Comment guifg=#5C6370 ctermfg=59

"green comments
hi Comment guifg=#7ea869 ctermfg=green
"hi Comment guifg=#a9f2a8 ctermfg=lightgreen
"hi Comment guifg=#a9f2a ctermfg=DarkGreen



" MAIN FAVORITE ONES COLORSCHEMES and FONTS
" Favorite right now top 4->
" 0. Programma
" 1. Space Mono with horizontal space 90%
" 2. ProFont for powerline
" 3. Dank Mono
" -------
" 0. ProggyVector
" 0. Proggy
" 0 SF Mono
" 0. Iosevka
" 0 Input Mono Narrow
" 0a PT-Mono
" 0b - IBM Plex Mono
" 0c - Inconsolata-g
" 1 - Operator-Mono - book
" 2 - 2nd favorite PT Mono
" 4 - Office-Code-Pro - medium
" 5 - Andale mono
" 6 - Robot Mono Version
" 7 - Input Mono Condensed regular
" 8 - Fira Mono Powerline
" 9 - Terminus font and Darkside iTerm2 color preset
" 10 - Hack Font
" 11 - Consolas
" 12 - M+ 1M font
" 13 - Monaco 14pt

" MAIN FAVORITE iterm2 colorschemes
" 0) - favorite one is Molokai
" 1) One Dark
" 2) Darkside
" 3) space-vim-dark
" 4) gruvbox-dark
" 5) Solarized Dark


"set guifont=Monaco\ 12
"let ayucolor="mirage" " for mirage version of theme
"let ayucolor="dark"   " for dark version of theme
"let ayucolor="light"  " for light version of theme - should be used with set background=light instead of dark
"colorscheme ayu


"favorite

"by default it will be default
"colorscheme default
"colorscheme minimalist
"colorscheme gruvbox
"colorscheme deus
"colorscheme OceanicNext
"colorscheme falcon
"colorscheme desert
"colorscheme palenight

"light theme
"colorscheme Light

"colorscheme xcode_dark
"colorscheme base16-default-dark
" colorscheme evening
" colorscheme janah
" colorscheme space-vim-dark

"colorscheme mustang
" colorscheme onedark
"colorscheme zenburn
" colorscheme solarized
" colorscheme monokai

