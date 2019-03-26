set nocompatible              " be improved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" vim colorschemes
Plugin 'drewtempelmeyer/palenight.vim'
"colorscheme palenight
Plugin 'ayu-theme/ayu-vim'

"https://github.com/heavenshell/vim-jsdoc
"JSDOC for js
"To use it, hover over a function and type in :JSDoc
Plugin 'heavenshell/vim-jsdoc'

"For commenting and uncommenting blocks of line
Plugin 'scrooloose/nerdcommenter'
"Comment out the current line or text selected in visual mode.
"[count]<leader>cc |NERDComComment|
"
"
"Uncomments the selected line(s).
"[count]<leader>cu |NERDComUncommentLine|
"
"
"Comments out the selected lines with a pretty block formatted layout.
"[count]<leader>cs |NERDComSexyComment|
"

"Amazing code completion - DISABLED FOR TabNine
"Plugin 'Valloric/YouCompleteMe'

"Replaced auto completition with tabnin
"https://tabnine.com/semantic - replacement for youcompleteme
"My project isn't a Git or Mercurial repository.
"How can I make TabNine index it?
" Add a file named .tabnine_root to the root of your project directory.
" TabNine respects .tabnineignore, .gitignore, .hgignore, and .ignore files.
Plugin 'zxqfl/tabnine-vim'

Plugin 'ternjs/tern'

Plugin 'ternjs/tern_for_vim'
" to use
" TernDef: Jump to the definition of the thing under the cursor.
" TernDoc: Look up the documentation of something.
" TernType: Find the type of the thing under the cursor.
" TernRefs: Show all references to the variable or property under the cursor.
" TernRename: Rename the variable under the cursor.

"This is a Vim plugin that provides Tern-based JavaScript editing support.
" will display argument type hints when the cursor is left over a function
let g:tern_show_argument_hints='on_hold'
" and
"
" Vim plugin has excellent keyboard shortcuts that aren’t enabled by default. To enable them
let g:tern_map_keys=1

" Vim's MatchParen for HTML tags
"Plugin 'gregsexton/MatchTag'

Plugin 'morhetz/gruvbox'

"Supertab is a vim plugin which allows you to use <Tab> for all your
"insert completion needs
Plugin 'ervandew/supertab'

Plugin 'flazz/vim-colorschemes'

"one dark color scheme
Plugin 'joshdick/onedark.vim'

Plugin 'chriskempson/base16-vim'

"color scheme
Plugin 'altercation/vim-colors-solarized'


Plugin 'christoomey/vim-tmux-navigator'

" do git in vim
" :GStatus
" :Gwrite
" :Gcommit
Plugin 'tpope/vim-fugitive'

" :GitLog
Plugin 'kablamo/vim-git-log'


Plugin 'tpope/vim-unimpaired'

" A collection of language packs for Vim.
Plugin 'sheerun/vim-polyglot'

" https://github.com/junegunn/goyo.vim
"Goyo is a plugin for “distraction-free writing in Vim”
":Goyo
Plugin 'junegunn/goyo.vim'

"mustang colorscheme
Plugin 'croaker/mustang-vim'

"Add python PEP8 checking with this nifty little plugin:
Plugin 'nvie/vim-flake8'

"Show which line changed since your last commit.
"GitGutterToggle
Plugin 'airblade/vim-gitgutter'

"Vim Better Whitespace Plugin
":ToggleWhitespace
": StripWhitespace
Plugin 'ntpeters/vim-better-whitespace'

" Easy align interactive
"" Just select and type Return then space. Type Return many type to change the
" alignments.
"
" If you want to align the second column, Return then 2 then space.
Plugin 'junegunn/vim-easy-align'
vnoremap <silent> <Enter> :EasyAlign<cr>

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

"Provides an overview of the structure of source code files
"Lean & mean status/tabline for vim that's light as air.
Plugin 'majutsushi/tagbar'

"Automatic folds (that is, folds generated by a fold method different
"from manual), bog down VIM noticeably in insert mode.
"They are also often recomputed too early (for example, when inserting an
"opening fold marker whose closing counterpart is yet missing to complete
"the fold.)
Plugin 'Konfekt/FastFold'

"FastFold integrates with the plug-in vim-stay that restores the folds of
"a file buffer by :mkview and :loadview.
Plugin 'kopischke/vim-stay'

"Easy switching between buffers - vim-airline will show buffer at the top
"unless multiple tabs are open
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'


"New ctrlp
Plugin 'ctrlpvim/ctrlp.vim'

"syntax cheker
Plugin 'scrooloose/syntastic'

" silver surfer search text ack bundle
Plugin 'ggreer/the_silver_searcher'
Plugin 'rking/ag.vim'

"Nerd Tree collapse window
Plugin 'scrooloose/nerdtree'
" font icons for different file extensions in NerdTree
" Install fonts for vim-devicons from https://github.com/ryanoasis/nerd-fonts
Plugin 'ryanoasis/vim-devicons'

"tags
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-easytags'

" ----- xolox/vim-easytags settings -----
set tags=~/.vimtags
let g:easytags_events = ['BufReadPost', 'BufWritePost']
let g:easytags_async = 1
let g:easytags_dynamic_files = 2
let g:easytags_resolve_links = 1
let g:easytags_suppress_ctags_warning = 1

"https://codeyarns.com/2015/03/21/easytags-plugin-for-vim/
" By default :UpdateTags only writes to the global tags file,
" but it can be configured to look for project specific tags files by adding the following lines to your [vimrc script]
" Let Vim walk up directory hierarchy from CWD to root looking for tags file
"set tags=tags;/
" Tell EasyTags to use the tags file found by Vim
"let g:easytags_dynamic_files = 1


" Exuberant Ctags
" to install ctags on Mac OS X (not default mac os x ctags)
" brew install ctags
" alias ctags="`brew --prefix`/bin/ctags"
" alias ctags >> ~/.zshrc

" if you get an error with ctags such as E431: Format error in tags file tags
" before byte 23232 for example. Open the tag file, hit
" :go 23232 and remove the offending lines


" jsctags
" https://github.com/ramitos/jsctags

" Vim plugin for selectively illuminating other uses of current word under the cursor
Plugin 'RRethy/vim-illuminate'



"vim sessions
Plugin 'xolox/vim-session'

"A fancy start screen for Vim.
Plugin 'mhinz/vim-startify'

"https://github.com/terryma/vim-smooth-scroll
"vim-smooth-scroll makes scrolling in Vim nice and smooth
Plugin 'terryma/vim-smooth-scroll'

"vim javascript
Plugin 'pangloss/vim-javascript'

"From http://oli.me.uk/2013/06/29/equipping-vim-for-javascript/
Plugin 'jelera/vim-javascript-syntax'


"Indent Guides is a plugin for visually displaying indent levels in Vim.
Plugin 'nathanaelkane/vim-indent-guides'
"to enable type mapleader (in my case space) and ig
"

" React Syntax Highlighting
Plugin 'mxw/vim-jsx'
let g:jsx_ext_required = 1 " Allow JSX in normal JS files
"Plugin 'neoclide/vim-jsx-improve'
"Plugin 'othree/yajs.vim'

"colorschemes
Plugin 'crusoexia/vim-monokai'

" lucario colorscheme
" iterm2 set up https://github.com/raphamorim/lucario#iterm"
Plugin 'raphamorim/lucario'

"colorscheme
"https://github.com/liuchengxu/space-vim-dark
Plugin 'liuchengxu/space-vim-dark'

"Vim syntax highlighting for c, bison, flex
Plugin 'justinmk/vim-syntax-extra'

"Tracks time you spend coding, branch, language, coding editor
"wakatime.com
Plugin 'wakatime/vim-wakatime'

" EasyMotion makes jumping to specific characters in the visible
" portion of your file effortless. Simply press leader-leader and a movement,
" and all currently visible possible matches are highlighted with one key to
" press to jump to that location.
"<Leader><Leader>w highlight first character of every word after the cursor with jump to keys
"<Leader><Leader>b highlight first character of every word before the cursor with jump to keys
"<Leader><Leader>f will ask for a character to search for and highlight all those characters
" ahead of the cursor with jump-to keys.
Plugin 'easymotion/vim-easymotion'


"A Personal Wiki For Vim
Plugin 'vimwiki/vimwiki'
" To open <leader>ww
"
" Normal mode:
" <Leader>ww -- Open default wiki index file.
" <Leader>wt -- Open default wiki index file in a new tab.
" <Leader>ws -- Select and open wiki index file.
" <Leader>wd -- Delete wiki file you are in.
" <Leader>wr -- Rename wiki file you are in.
" <Enter> -- Folow/Create wiki link
" <Shift-Enter> -- Split and folow/create wiki link
" <Ctrl-Enter> -- Vertical split and folow/create wiki link
" <Backspace> -- Go back to parent(previous) wiki link
" <Tab> -- Find next wiki link
" <Shift-Tab> -- Find previous wiki

" Diary
" If you press <Leader>wi, you will be taken to a special Diary Index page
" By pressing <Leader>w<Leader>w you create a new diary
" By pressing <Leader>w<Leader>i you will generate an index of all your diary pages

" to search for entries :VWS <keyword>
"    Search for /pattern/ in all files of current wiki.
"    To display all matches use |:lopen| command.
"    To display next match use |:lnext| command.
"    To display previous match use |:lprevious| command.
"    more https://raw.githubusercontent.com/vimwiki/vimwiki/master/doc/vimwiki.txt


" Vim-wiki uses Mediawiki syntax by default
"https://www.mediawiki.org/wiki/Help:Formatting


" if you switch to markdown it will disable some featuers such as export to  html
" https://www.dailydrip.com/blog/vimwiki.html

"Vim-wiki setup
" path - where the files are saved. I link it to my google drive so it's synced
" path_html - where the html pages get saved
" auto-export - automatically create html files
"
let wiki_user = {}
let wiki_user.path = '~/Google\ Drive/vim-wiki/'
let wiki_user.path_html = '~/Google\ Drive/vim-wiki/html'
let wiki_user.auto_export = 1
let wiki_user.nested_syntaxes = {'python': 'python', 'c++': 'cpp', 'cc': 'c', 'rust': 'rust', 'sql': 'sql', 'javascript': 'javascript', 'sh': 'sh', 'bash': 'sh', 'conf': 'conf', 'ssh': 'python', 'yaml': 'yaml', 'md': 'markdown', 'makefile': 'make', 'messages': 'messages'}
let wiki_user.automatic_nested_syntaxes = 1
" Handler for precise linking
let g:vimwiki_list = [wiki_user]


"old all in 1 setting
"let g:vimwiki_list = [{'path': '~/Google\ Drive/vim-wiki/',
"                        \ 'path_html': '~/Google\ Drive/vim-wiki/html',
"                        \ 'auto_export': 1,
"                        \ 'nested_syntaxes': {'ruby': 'ruby', 'python': 'python', 'c++': 'cpp', 'sh': 'sh', 'racket': 'racket', 'php': 'php', 'javascript': 'js', 'sql': 'sql'}
"                        \ }]


"Vimwiki also has bindings to quickly create and view diary pages.
"This at first seemed fairly useless to me, but now I can't live without them.
"By pressing <Leader>w<Leader>w, you are taken to a page named for the current date.
"I use this page to record notes on meetings, to store context copied from emails that has informed decisions,
"as a scratch page for random code snippets for discussion, regexes I found useful... the list goes on and on.
"I make use of the Vimwiki tagging system (a word that begins and ends with a colon like :music:)
"in order to categorize things by meetings, notes, scraps, etc. Just like the links, the Vim omnicompletion system
"will listen to and complete your tags as well. I often will simply ripgrep/ack the whole folder.
"If you press <Leader>wi, you will be taken to a special Diary Index page, and
"by pressing <Leader>w<Leader>i you will generate an index of all your diary pages,
"which will be titled by the first header in the file, or by the date... very cool for answering the ever troublesome question: Just what exactly did I do this week?


"Calendar
Plugin 'mattn/calendar-vim'
":Calendar

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


" map leader is a space in this case
" can now hit space ss to save session for example
let mapleader = " "

"Encoding must be set to UTF-8 for the glyphs to show
set encoding=utf8
set fileencoding=utf8

" These are the tweaks I apply to YCM's config, you don't need them but they
" might help.
" " YCM gives you popups and splits by default that some people might not
" like, so these should tidy it up a bit for you.
let g:ycm_add_preview_to_completeopt=0
let g:ycm_confirm_extra_conf=0
set completeopt-=preview

" default c config
" To auto-complete source code for C family,
" you should provide custom .ycm_extra_conf.py file for your project.
" If you don’t do this, YCM will be unable to use semantic completion.
let g:ycm_global_ycm_extra_conf = "$HOME/.vim/.ycm_extra_conf.py"


" bind shift KK to grep word under cursor
"nnoremap KK :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>
" Use Ag instead of grep (more advanced)
nnoremap KK :Ag! "\b<C-R><C-W>\b"<CR>:cw<CR>


" == Shift K actives man pages ==

" == GIT ==
" https://salferrarello.com/using-vim-view-git-commits/#oneline-gitlog-vim
" $ git log | vim -R -
" Running this command in command line, executes git log and opens a copy of Vim populated
" with the results of git log. Once you’re in Vim, if you place your cursor over
" a commit (e.g. 083279917ae3bbe8bfc25b2bf785acbbee302415)
" and click K, you’ll be temporarily shown the result of running git show on the commit.
" == Why does this work? ==
" When you’re in Vim, the default behavior when you click K is to take the word under the cursor and look it up using the man program. This behavior can be modified by setting the value of keywordprg to something other than man.
" Vim automatically sets keywordprg for some filetypes, including the filetype git. When the filetype is set to git, keywordprg is set to git show.

"You can configure ag.vim to always start searching from your project root instead of the cwd
let g:ag_working_path_mode="r"

"Just hit control C and it will move the closing bracket down
imap <C-c> <CR><Esc>O
"<C-g>g mapping. CTRL+g g will put you after the matching bracket


" Some settings to enable the theme:
" Show line numbers
set number

"let g:solarized_termtrans = 1

" Use syntax highlighting
set history=700
set wildmenu"Turn on WiLd menu
set ruler
set cmdheight=2
set hid
set backspace=eol,start,indent
set whichwrap+=<,>,h,l
set ignorecase
set smartcase
set hlsearch
set incsearch
set nolazyredraw
set magic
set showmatch
set mat=2
set noerrorbells
set novisualbell
set t_vb=
set tm=500
set smarttab
set lbr
set tw=500
set ai
set si
set nowrap
set number
" syntax enable will keep your current color setting
" syntax on will overwrite with vim defaults.
syntax enable
" syntax on
set shiftwidth=4
set tabstop=4
set softtabstop=4
set relativenumber

"removes newline EOL
"so other non vim/terminal editors don't see extra line
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


"A classic “Python tell” in Vim is the 79th or 80th character highlight:
" set colorcolumn=80              " Show the 80th char column.
" highlight ColorColumn ctermbg=5
" turn off the color by
set cc=


"show status at the bottom of vim file
set laststatus=2

"tail of the filename
set statusline=%f

"let g:solarized_termcolors = 256
"let g:solarized_termcolors = 16

" solarized options
let g:solarized_visibility = "high"
let g:solarized_contrast = "high"
"let g:solarized_contrast = "normal"

"let g:gruvbox_contrast_dark='hard'

"Switch between different backgrounds
set background=dark
" set background=light

" MAIN FAVORITE ONES COLORSCHEMES and FONTS
" 1a) Dank Mono
" 1b) Operator-Mono - book
" 1c) Office-Code-Pro - medium
" 1d) Andale mono
" 1e) Robot Mono Light Version
" 1f) Input Mono Condensed regular
" 2) Fira Mono Powerline
" 3) Terminus font and Darkside iTerm2 color preset
" 4) Hack Font
" 5) Inconsolata-g Review
" 6) Consolas
" 7) M+ 1M font
" 8) Monaco 14pt

" MAIN FAVORITE iterm2 colorschemes
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

colorscheme base16-default-dark
" colorscheme palenight
" colorscheme gruvbox
" colorscheme evening
" colorscheme janah
" colorscheme space-vim-dark

" colorscheme mustang
" colorscheme onedark
" colorscheme lucario

" colorscheme zenburn
" colorscheme solarized
" colorscheme jellybeans
" colorscheme monokai

"BONUS ONES
" colorscheme apprentice
" colorscheme wombat256
"let g:onedark_termcolors=16


"let g:monokai_term_italic = 1
"let g:monokai_gui_italic = 1


"airline Automatically displays all buffers when there's only one tab open.
let g:airline#extensions#tabline#enabled = 1

" show buffer number in buffer tabs
"let g:airline#extensions#tabline#buffer_nr_show = 1
" to switch to buffer number 5
" :b 5

let g:airline#extensions#tabline#enabled                      = 1
let g:airline#extensions#tabline#buffer_idx_mode              = 1
"let g:airline#extensions#tabline#show_buffers                 = 1
"let g:airline#extensions#tabline#buffer_min_count             = 1
"let g:airline#extensions#tabline#tab_min_count                = 1
"let g:airline#extensions#branch#enabled                       = 1
"let g:airline#extensions#tagbar#enabled                       = 0


" power fonts
let g:airline_powerline_fonts = 1
"let g:airline_theme='base16'
let g:airline_theme='onedark'

if ! has('gui_running')
  set ttimeoutlen=10
  augroup FastEscape
    autocmd!
    au InsertEnter * set timeoutlen=0
    au InsertLeave * set timeoutlen=1000
  augroup END
endif

"
"let base16colorspace=256  " Access colors present in 256 colorspace



"Auto indent cod
set autoindent

"enable cursor line
set cursorline


"make your python code look pretty
let python_highlight_all=1

"grey comments
"hi Comment guifg=#5C6370 ctermfg=59

"green comments
hi Comment guifg=#7ea869 ctermfg=green









autocmd Filetype html setlocal ts=4 sts=4 sw=4 expandtab
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


"vim-unimpaired shortcuts
" [q - :cprev
" ]q - :cprev
" [Q - :cfirst
" ]Q - :clast


"ALSO BELOW are shortcuts from vim-unimpared plugin
" JUST REFERENCE BELOW
"[b     |:bprevious|
"]b     |:bnext|
"[B     |:bfirst|
" --- END REFERENCE


"CtrlP finding files
" Change the default mapping and the default command to invoke CtrlP:
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
" When invoked, unless a starting directory is specified, CtrlP will set its
" local working directory according to this variable:
let g:ctrlp_working_path_mode = 'ra'


let g:ackprg = 'ag --nogroup --nocolor --column'

" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif




"Tell NERDTree not to use the fancy arrow characters, by adding,
"otherwise arrows in NerdTree will look weird
let g:NERDTreeDirArrows=0


" open a NERDTree automatically when vim starts up if no files were specified
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif


" NERDTree with Ctrl+n (you can set whatever key you want):
map <C-n> :NERDTreeToggle<CR>

"my own defined shortcut  display all class methods and source code structure
"for tag bar
" C-o used for jumping
"nmap <C-o> :TagbarToggle<CR>
"to open tag bar hit space and o
nnoremap <leader>oo :TagbarToggle<CR>

"close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Control + C mapping to run :bp | bd #
" which moves to previous buffer and closes the buffer we just moved from
" this way you can close a buffer and still have a vsplit for example
nnoremap <C-c> :bp\|bd #<CR>

"vim sessions
let g:session_directory = "~/.vim/session"
let g:session_autoload = "no"
let g:session_autosave = "no"
let g:session_command_aliases = 1

"vim sessionc custom mapping
nnoremap <leader>so :OpenSession
nnoremap <leader>ss :SaveSession
nnoremap <leader>sd :DeleteSession<CR>
nnoremap <leader>sc :CloseSession<CR>


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


" Switch to last active buffer
noremap <leader>b :buffer #<CR>

"https://github.com/xolox/vim-easytags
" Since version 3.6 the vim-easytags plug-in tries to squeeze as much
" performance as
" possible out of Vim by using keyword highlighting where this is possible
" without sacrificing accuracy.
" If your Vim's syntax highlighting is still too slow you can add the
" following to your [vimrc script] vimrc:
let g:easytags_syntax_keyword = 'always'

"The g:easytags_async option
" By default vim-easytags runs Exuberant Ctags and updates your tags file in
" the foreground, blocking Vim in the process.  As your tags files get larger
" this becomes more annoying. It has been the number one complaint about
" vim-easytags since
" I published the first release online.  In version 3.5 of the vim-easytags
" plug-in support for asynchronous tags
" file updates was added. It's not enabled by default yet because I want to
" make sure I'm not breaking the
" plug-in for the majority of users. However after I've gathered some feedback
" I definitely want to make this the default mode.
" By setting this option to true (1) you enable asynchronous tags file updates.
" Good luck! ;-)
let g:easytags_async=1

"By default the plug-in automatically updates and highlights your tags when
"you stop typing for a moment.  "If you want to disable automatic highlighting
"while keeping automatic updating enabled you can set this option to false:
let g:easytags_auto_highlight=0


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
" To turn off column signs
" set signcolumn=no

"The native support for Java includes YCM's native realtime diagnostics display.
"This can conflict with other dianostics plugins like Syntastic,
"so when enabling Java support, please manually disable Syntastic Java diagnostics.
let g:syntastic_java_checkers = ['']

" JavaScript
" npm install -g eslint
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exe = 'npm run lint --'

" The native support for Java includes YCM's native realtime diagnostics display.
" This can conflict with other dianostics plugins like Eclim, so when enabling
" Java support, please manually disable Eclim Java diagnostics.
let g:EclimFileTypeValidate = 0

"space st will enable and disable syntastic
nmap <leader>st :SyntasticToggleMode<CR>


"put away all .swp files into home dir instead of cluttering up in your
"projects
"set swapfile
"set dir=~/tmp/

" When opening a file or bookmark, change to its directory.
let g:startify_change_to_dir = 0

"gets rid of possibly useless use of a variable in void context error
"let g:syntastic_eruby_ruby_quiet_messages =  {'regex': 'possibly useless use
"of a variable in void context'}

" get rid of syntastic warning for ejs and javascript files
" let g:syntastic_mode_map={ 'mode': 'active',
"                     \ 'active_filetypes': [],
"                     \ 'passive_filetypes': ['html'] }

" JavaScript
let javascript_enable_domhtmlcss = 1


" NERDTress File highlighting
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
"exec 'autocmd FileType nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
" guibg sets the background color of each file extension. We use guibg=NONE so the background color of file extension matches
" the current them
exec 'autocmd FileType nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg=NONE guifg='. a:guifg
exec 'autocmd FileType nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction

au VimEnter * call NERDTreeHighlightFile('jade', 'green', 'none', 'green', '#151515')
au VimEnter * call NERDTreeHighlightFile('handlebars', 'green', 'none', 'green', '#151515')
au VimEnter * call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#151515')
au VimEnter * call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
au VimEnter * call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#151515')
au VimEnter * call NERDTreeHighlightFile('styl', 'cyan', 'none', 'cyan', '#151515')
au VimEnter * call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')
au VimEnter * call NERDTreeHighlightFile('coffee', 'Red', 'none', 'red', '#151515')
au VimEnter * call NERDTreeHighlightFile('js', 'Red', 'none', '#ffa500', '#151515')
au VimEnter * call NERDTreeHighlightFile('rb', 'Red', 'none', '#ffa500', '#151515')
au VimEnter * call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff00ff', '#151515')

""folding settings
"set foldmethod = indent   "fold based on indent

set foldmethod=syntax
"set foldmethod=manual
set foldlevelstart=1
"set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use

let javaScript_fold=1         " JavaScript
let perl_fold=1               " Perl
let php_folding=1             " PHP
let r_syntax_folding=1        " R
let ruby_fold=1               " Ruby
let sh_fold_enabled=1         " sh
let vimsyn_folding='af'       " Vim script
let xml_syntax_folding=1      " XML






" Allow mouse to scroll the vim windows and resize splits
set mouse=a

"Allow mouse to resize splits when vim is inside tmux
if has("mouse_sgr")
  set ttymouse=sgr
else
  set ttymouse=xterm2
end

" START Speed up Syntax Highlighting
" The defaults for syncing in some syntaxes for vim can be very slow,
" especially for large files and slow machines.
augroup vimrc
    autocmd!
    autocmd BufWinEnter,Syntax * syn sync minlines=500 maxlines=500
augroup END
" speed up syntax highlighting
set nocursorcolumn
set nocursorline
syntax sync minlines=256
set synmaxcol=300
set re=1
" END speed up syntax highlighting


" yy will not just use internal vim buffer but will also copy
" into OS's clipboard
set clipboard=unnamed

" Overwrite colorschemes background when trying to enable transparency
" this will allow you to go to transparent mode in in terminal
hi Normal ctermbg=NONE guibg=NONE

"Overwrite hightlight color change for SEARCH
"for the GUI
"hi Search guifg=black guibg=red
" for terminal vim
"hi Search cterm=NONE ctermfg=black ctermbg=red


" * You can now set a darker background for bright environments.
" To activate, use:
let g:zenburn_high_Contrast = 1

"changing color of the folds
"hi Folded ctermbg=235

" === VIM CheatSheet ===
"
" @: will repeat  any Ex command (:w) for example
" &  will repeat :substitute commands
"
" To access all currently defined registers type
" :reg
"
" TO REFRESH syntax higlight type in
" :filetype detect
"  OR also try
" :syntax sync fromstart
"
" To turn off column signs for syntastic
" set signcolumn=no
"
" FOLDING
" zm to close fold level by level
" zr open fold level by level
" za to toggle open and close of a fold (don't need to use zc or zo)
" zR open ALL folds

" zc to close a fold
" zo open a fold

"close all folds with zM (not really needed?)
"
" The easiest way to disable (and enable) folding on the fly is zi.
" zi is the normal mode command that toggles 'foldenable', just like :set foldenable!.
" Mnemonic: "fold invert". See :h zi.

"let g:ycm_keep_logfiles = 1
let g:ycm_log_level = 'debug'
" Use true colors
set termguicolors
"set term=xterm-256color
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