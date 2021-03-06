"  _vimrc 20200312
"____________________________________________________________________________________________________________________
"____________________________________________________________________________________________________________________
let $HOME=$VIM
"Vundle
"
set nocompatible              	" be iMproved, required
filetype off					" required

"set the runtime path to include Vundle and initialize
"set rtp+=C:/Programme/Vim/vimfiles/bundle/Vundle.vim
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
"
Plugin 'ycm-core/YouCompleteMe'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'preservim/nerdtree'
Plugin 'vim-syntastic/syntastic'
Plugin 'preservim/nerdcommenter'
Plugin 'morhetz/gruvbox'
Plugin 'altercation/vim-colors-solarized'
Plugin 'frazrepo/vim-rainbow'
Plugin 'itchyny/lightline.vim'
Plugin 'KnoP-01/krl-for-vim'
Plugin 'KnoP-01/rapid-for-vim'
Plugin 'jalvesaq/Nvim-R'
Plugin 'chrisbra/csv.vim'
Plugin 'othree/html5.vim'
Plugin 'Raimondi/delimitMate'
Plugin 'rickhowe/diffchar.vim'
Plugin 'romainl/vim-qf'
"
" All of your Plugins must be added before the following line
call vundle#end()            " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"____________________________________________________________________________________________________________________
"Start-Up
"
syntax off                  " undo what plug#begin() did to syntax
filetype plugin indent off  " undo what plugin#begin() did to filetype
syntax on                   " before filetype plugin on
filetype plugin indent on   " after syntax on
"____________________________________________________________________________________________________________________
"general
"
"source $VIMRUNTIME/vimrc_example.vim
"packadd! matchit
silent call mkdir ($HOME.'/.vim_backup', 'p')
set encoding=utf-8
set termencoding=utf-8
scriptencoding utf-8
source $VIMRUNTIME/mswin.vim
behave mswin
set langmenu=en_US
let $LANG = 'en_US'
" activate toggle background with ctrl-F2
call togglebg#map("")
"set nocompatible     " explicitly get out of vi-compatible mode
set background=dark" we plan to use a dark background
"set background=light" we plan to use a dark background
set noautochdir           " always switch to the current file directory
set lazyredraw            " do not redraw while running macros
set autoindent          " autoindent
set autowriteall        " write buffers automatical if required
set backup              " make backup files
"set backupdir=D:\tmp   " where to put backup files
set backupdir=~\.vim_backup   " where to put backup files
set noundofile
set clipboard+=unnamed  " share windows clipboard
"set hidden             " set buffer hidden
set noerrorbells        " don't make noise
set mouse=a             " use mouse everywhere
"set shortmess+=I        " don't show splashscreen
"set directory=.,d:\tmp
set directory=.,~\.vim_backup
"____________________________________________________________________________________________________________________
"Diff
"
set diffopt+=internal,algorithm:patience
"____________________________________________________________________________________________________________________
" gVim appearance
"
set textwidth=200					  " automatic textwidth
set nocursorcolumn                    " highlight the current column
set cursorline                        " highlight current line
set list                              " show listchars
set listchars=nbsp:¬,tab:»\ ,trail:·  " listchars
set lazyredraw                        " do not redraw while running macros
set linespace=0                       " don't insert any extra pixel lines betweens rows
set ruler                             " Always show current positions along the bottom
"set scroll=12                        " lines to scroll
"set scrolljump=12                     " lines to scroll
set scrolloff=4                       " Keep 4 lines (top/bottom) for scope
set number                            " turn on line numbers
set numberwidth=5                     " We are good up to 99999 lines
set nostartofline                     " leave my cursor where it was
"set visualbell                        " use t_vb
"set vb t_vb=                          " don't do anything
set statusline=%F%m%r%h%w[%L]%y[%p%%][%04l,%04v]
"set statusline=%f%m%r%h%w[%L][%{&ff}]%y[%p%%][%04l,%04v]
"              | | | | |  |   |      |  |     |    |
"              | | | | |  |   |      |  |     |    + current
"              | | | | |  |   |      |  |     |       column
"              | | | | |  |   |      |  |     +-- current line
"              | | | | |  |   |      |  +-- current % into file
"              | | | | |  |   |      +-- current syntax in
"              | | | | |  |   |          square brackets
"              | | | | |  |   +-- current fileformat
"              | | | | |  +-- number of lines
"              | | | | +-- preview flag in square brackets
"              | | | +-- help flag in square brackets
"              | | +-- readonly flag in square brackets
"              | +-- rodified flag in square brackets
"              +-- full path to file in the buffer
set laststatus=2 " always show the status line
set tabpagemax=1000
set showtabline=1
set showmatch
set viminfo=%,<800,'10,/50,:100,h,f0,n~/.vim/.viminfo
"           | |    |   |   |    | |  + viminfo file path
"           | |    |   |   |    | + file marks 0-9,A-Z 0=NOT stored
"           | |    |   |   |    + disable 'hlsearch' loading viminfo
"           | |    |   |   + command-line history saved
"           | |    |   + search history saved
"           | |    + files marks saved
"           | + lines saved each register (old name for <, vi6.2)
"           + save/restore buffer list
"Toggle Menubar usw.
autocmd BufEnter * silent! lcd %:p:h
autocmd BufEnter bufdo tab split
"
" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
"____________________________________________________________________________________________________________________
" Mapping:
"
let mapleader = ","	
let maplocalleader = "ö"
noremap									<F9>	 		<Esc>:bufdo tab split<CR>:tablast<CR>:tabclose<CR>
"noremap									<F2>	 		<ESC>:if &guifont=~#'Fira_Code:h8'<Bar>set guifont=Fira_Code:h10.5<Bar>set lines=55<Bar>wincmd =<Bar>else<Bar>set guifont=Fira_Code:h8<Bar>set lines=55<Bar>wincmd =<Bar>endif<CR>
noremap									<F2>	 		<ESC>:call WindowSize()<CR>
noremap									<M-F2>	 		<ESC>:call WindowDiffSize()<CR>
noremap									<F3>			<ESC>:if &lines=~#'55'<Bar>set lines=75<Bar>else<Bar>set lines=55<Bar>endif<CR>
nmap									<localleader>h 	<plug>(YCMHover)
"noremap <expr>							<C-h> &diff ?	'<ESC><c-w><c-w>' : '<ESC><c-w>h'
noremap <expr>							<C-h> &diff ?	'<ESC><c-w>h' : '<ESC><c-w>h'
noremap <expr>							<C-j> &diff ?	'<ESC>]c' : '<ESC><c-w>j'
noremap <expr>							<C-k> &diff ?	'<ESC>[c' : '<ESC><c-w>k'
"noremap <expr>							<C-l> &diff ?	'<ESC><c-w><c-w>' : '<ESC><c-w>l'
noremap <expr>							<C-l> &diff ?	'<ESC><c-w>l' : '<ESC><c-w>l'
noremap									<localleader>g 	:diffge<CR>
noremap									<localleader>p 	:diffpu<CR>
"___________________________________________________________________________________________________________________
" Terminal mode mapping
"
"tnoremap								<C-h>			<Esc><c-w>h
"tnoremap								<C-j>			<Esc><c-w>j
"tnoremap								<C-k>			<Esc><c-w>k
"tnoremap								<C-l>			<Esc><c-w>l
tnoremap								<C-V>			<C-W>"*
tnoremap								<Esc>			<C-\><C-n>
"tnoremap								<S-Esc>			<C-\><C-n>:q!<CR>
"____________________________________________________________________________________________________________________
" Insert mode mapping
"
"inoremap								<C-h>			<Esc><c-w>h
"inoremap								<C-j>			<Esc><c-w>j
"inoremap								<C-k>			<Esc><c-w>k
"inoremap								<C-l>			<Esc><c-w>l
"digraph
inoremap								<C-d>			<C-k>
"____________________________________________________________________________________________________________________
" Visual mode mapping
"
"vnoremap								<C-h>			<Esc><c-w>h
"vnoremap								<C-j>			<Esc><c-w>j
"vnoremap								<C-k>			<Esc><c-w>k
"vnoremap								<C-l>			<Esc><c-w>l
au BufNewFile,BufRead *.py vnoremap 	<localleader>ss	"yy<c-w>j<c-w>"y<CR><c-w>k
vnoremap								<				<gv
vnoremap								>				>gv
vnoremap 								yp				"0p
vnoremap 								yP				"0P
vnoremap 								yy				y
vnoremap 								do				:diffge<CR>
vnoremap 								dp				:diffpu<CR>
vnoremap 								<localleader>/	:<C-U>execute "vimgrep /" . expand("<cword>") . "/gj **/*.*"<CR>
"____________________________________________________________________________________________________________________
" normal mode mapping
"
nnoremap								<TAB>			:tabn<CR>
nnoremap								<S-TAB>			:tabp<CR>
nnoremap								<C-F1>			:if &go=~#'m'<Bar>set go-=mcerb<Bar>else<Bar>set go+=mcerb<Bar>endif<CR>
"nnoremap								<C-h>			<c-w>h
"nnoremap								<C-j>			<c-w>j
"nnoremap								<C-k>			<c-w>k
"nnoremap								<C-l>			<c-w><c-w>l
nnoremap								<F6>			:YcmForceCompileAndDiagnostics<CR>
nnoremap								<F5>			:TlistToggle <CR>                                  " taglist
nnoremap								<M-F5>			:TlistUpdate<CR>                                 " taglist
nnoremap								<F4>			:NERDTreeToggle<CR>
nnoremap								<C-F12>			<Esc>:wqa!<CR>                                       " speichern/beenden
nnoremap								<F12>			<Esc>:w!<CR>                                           " speichern
nnoremap								<F11> 			<ESC>:silent !start powershell<CR>
au BufNewFile,BufRead *.py nnoremap 	<M-F11> 		:silent !start powershell -NoExit python %<CR>
au BufNewFile,BufRead *.py nnoremap		<M-t> 			:term python %<CR>
nnoremap								<M-t> 			:term python<CR>
au BufNewFile,BufRead *.py nnoremap 	<localleader>rc	:call CheckTerm1()<CR>
au BufNewFile,BufRead *.py nnoremap 	<localleader>rf	:call CheckTerm2()<CR>
au BufNewFile,BufRead *.py nnoremap 	<localleader>l	V"yy<c-w>j<c-w>"y<c-w>k
au BufNewFile,BufRead *.py nnoremap 	<localleader>rq :call CloseTerm()<CR>
nnoremap 								<BS>			:nohls<CR>
nnoremap 								H				^
nnoremap 								L				$
nnoremap 								yp				"0p
nnoremap 								yP				"0P
nnoremap 								J				gjzz
nnoremap 								K				gkzz
nnoremap 								<S-U>			<C-R>
nnoremap 								<localleader>i	<C-A>
nnoremap 								<localleader>d	<C-X>
nnoremap								Q 				@q
nnoremap								W 				@w
nnoremap								E 				@e
nnoremap 								<leader>h		:call BlacklistFiletype()<CR>
nnoremap 								<localleader>t	:call CopyOut()<CR>
nnoremap 								<leader>/		:call GrepBuffers("<C-R><C-W>")<CR>
nnoremap 								<localleader>e	wbve"oyy:%s/\<o\>/o/g
nnoremap 								<localleader>E	wbve"oyy:tabdo %s/\<o\>/o/g
"au FileType qf nnoremap <buffer> 		<CR> 			<CR>:tabdo :ccl<CR>
autocmd FileType qf nnoremap <buffer> <Enter> <C-W><Enter><C-W>T
autocmd FileType nerdtree nnoremap <buffer> <localleader>/ :vimgrep //gj **/*.*<Left><Left><Left><Left><Left><Left><Left><Left><Left><Left>
au BufNewFile,BufRead *.html nnoremap 	<M-F11> 		:silent !start powershell -NoExit browser-sync start --server --files .<CR>
au BufNewFile,BufRead *.css nnoremap 	<M-F11> 		:silent !start powershell -NoExit browser-sync start --server --files .<CR>
au BufNewFile,BufRead *.js nnoremap 	<M-F11> 		:silent !start powershell -NoExit browser-sync start --server --files .<CR>

"____________________________________________________________________________________________________________________
" command-line mapping
"
cnoremap								<C-h>			<Left>
cnoremap								<C-l>			<Right>
"____________________________________________________________________________________________________________________
"Terminal Window
"
set termwinsize=12x1000
set splitbelow

function CheckTerm1()
	if len(term_list())>=1
		let termList = term_list()[0]
		exec termList . "bd!"
        "set lines=75
		"set splitbelow
		if &lines > 55
			set termwinsize=20x1000
		else
			set termwinsize=12x1000
		endif
		term python %
		normal 
		"set nosplitbelow
    else
        "set lines=75
		"set splitbelow
		if &lines > 55
			set termwinsize=20x1000
		else
			set termwinsize=12x1000
		endif
		term python %
		normal 
		"set nosplitbelow
    endif
endfunction

function CheckTerm2()
	if len(term_list())>=1
		let termList = term_list()[0]
		exec termList . "bd!"
        "set lines=75
		"set splitbelow
		if &lines > 55
			set termwinsize=20x1000
		else
			set termwinsize=12x1000
		endif
		term python
		normal 
		"set nosplitbelow
    else
        "set lines=75
		"set splitbelow
		if &lines > 55
			set termwinsize=20x1000
		else
			set termwinsize=12x1000
		endif
		term python
		normal 
		"set nosplitbelow
    endif
endfunction

function CloseTerm()
	let current_buff = bufnr("%")
	let termList = term_list()[0]
	if len(term_list())>=1
		if current_buff == termList
			"<C-\><C-n>:q!
		else
			exec termList . "bd!"
        "set lines=55
		endif
	endif
endfunction

function CopyOut()
	set nomagic
	exec "normal 0v$yyjG?*jV/>>>yykpV/>>>,cc/>>>0D"
	set magic
endfunction

"____________________________________________________________________________________________________________________
"WindowSizeChange
"
function WindowSize()
	if &guifont=~#'Fira_Code:h8'
		set guifont=Fira_Code:h10.5
		set columns=136                   " columns
		set lines=55
		wincmd =
	else
		set guifont=Fira_Code:h8
		set columns=136                   " columns
		set lines=55
		wincmd =
	endif
endfunction

function WindowDiffSize()
	"if &diff && &columns!=999 && &columns!=272
	if &columns!=999 && &columns!=272
		set columns=999
		set lines=999
		wincmd =
	"elseif &diff && &columns==272
	elseif &columns==272
		set columns=136                   " columns
		set lines=55
		wincmd =
	endif
endfunction
"____________________________________________________________________________________________________________________
"Quckfix window
"
set switchbuf+=usetab,newtab
aug QFClose
  au!
  au WinEnter * if winnr('$') == 1 && &buftype == "quickfix"|q|endif
aug END
"____________________________________________________________________________________________________________________
"Text Formatting/Layout
"
set completeopt=menu,preview   " use a pop up menu for completions
set noexpandtab                " :set expandtab + :retab
set shiftwidth=4               " auto-indent amount when using cindent, >>, << and stuff like that
set softtabstop=0              " when hitting tab or backspace, how many spaces should a tab be (see expandtab)
set tabstop=4                  " real tabs should be 8, and they will show with set list on
set nowrap                     " do not wrap line
set foldmethod=syntax
"____________________________________________________________________________________________________________________
"Searching
"
set incsearch   " incremental search
set hlsearch    " use :nohlsearch for clearance
set ignorecase  " ignoriere Gross- und Kleinschreibung
"set smartcase   " intelligent Gross- und Kleinschreibung
"____________________________________________________________________________________________________________________
"gruvbox
"
let g:gruvbox_italic=0
let g:gruvbox_underline=0
let g:gruvbox_bold=1
"____________________________________________________________________________________________________________________
" YouCompleteMe
"
let g:ycm_autoclose_preview_window_after_completion=1
set completeopt+=popup
let g:ycm_python_interpreter_path = ''
let g:ycm_python_sys_path = []
let g:ycm_extra_conf_vim_data = ['g:ycm_python_interpreter_path','g:ycm_python_sys_path']
let g:ycm_global_ycm_extra_conf = '~/global_extra_conf.py'

function BlacklistFiletype()
	if exists("g:ycm_filetype_blacklist[&filetype]")
		if g:ycm_filetype_blacklist[&filetype]==1
			unlet g:ycm_filetype_blacklist[&filetype]
			echo "YouCompleteMe activated for " . &filetype . "!"
		else
			let g:ycm_filetype_blacklist[&filetype] = 1
			echo "YouCompleteMe deactivated for " . &filetype . "!"
		endif
	else
		let g:ycm_filetype_blacklist[&filetype] = 1
		echo "YouCompleteMe deactivated for " . &filetype . "!"
	endif
endfunction

"____________________________________________________________________________________________________________________
"solarized
"
let g:solarized_italic=0
let g:solarized_underline=0
let g:solarized_bold=1
"____________________________________________________________________________________________________________________
"rainbow
"
let g:rainbow_active = 0
"____________________________________________________________________________________________________________________
"lightline
"
let g:lightline = {'colorscheme': 'gruvbox',}
"let g:lightline = {'colorscheme': 'solarized',}
set noshowmode
"____________________________________________________________________________________________________________________
" taglist
"
let Tlist_Ctags_Cmd = $HOME . '/ctags58/ctags.exe'
set tags=tags;/
let Tlist_Auto_Open=0 " let the tag list open automagically
let Tlist_Exit_OnlyWindow = 1 " if you are the last, kill
let Tlist_Use_Right_Window = 1 " split to the right side
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Close_On_Select = 1
"____________________________________________________________________________________________________________________
" syntastic
"
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
"let g:syntastic_python_checkers = ['flake8', 'pyflakes', 'pylint', 'python']
"____________________________________________________________________________________________________________________
" SimpylFold
"
let g:SimpylFold_docstring_preview=1
let g:SimpylFold_fold_docstring = 1
"____________________________________________________________________________________________________________________
" NERDTree
"
let NERDTreeMapOpenInTab='\r'
let NERDTreeMapOpenInTab='<ENTER>'
let NERDTreeChDirMode=2
"____________________________________________________________________________________________________________________
" ABB rapid
"
"let g:knopVerbose = 1 " don't show messages
let tlist_rapid_settings='rapid;p:procedure;r:record;f:function;t:trap;e:eio'
let g:rapidFormatComments = 0 " don't break comment lines automatically
let g:rapidCommentIndent = 1 " indent comments starting in 1st column too
let g:rapidShortenQFPath = 1 " don't shorten paths in quickfix
let g:rapidAutoComment = 0 " don't continue comments with o, O or Enter
let g:rapidSpaceIndent = 0 " don't change 'sts', 'sw', 'et' and 'sr'
"let g:rapidConcealStructs = 0 " switch concealing off completely
let g:rapidConcealStructs = 1 " conceal all structure values
au BufNewFile,BufRead *.mod set expandtab
"au BufNewFile,BufRead *.mod set fileencoding=latin1
au BufNewFile,BufRead *.sys set expandtab
"au BufNewFile,BufRead *.sys set fileencoding=utf-8
"____________________________________________________________________________________________________________________
" KUKA krl
"
let tlist_krl_settings='krl;p:procedure;f:function;c:case'
let g:krlFoldMethodSyntax = 0
let g:krlFormatComments = 0 " don't break comment lines automatically
let g:krlCommentIndent = 1 " indent comments starting in 1st column too
let g:krlShortenQFPath = 1 " don't shorten paths in quickfix
let g:krlAutoComment = 0 " don't continue comments with o, O or Enter
let g:krlSpaceIndent = 0 " don't change 'sts', 'sw', 'et' and 'sr'
"let g:krlFoldLevel = 0 " switch folding off completely
"let g:krlFoldLevel = 1 " close movement folds on startup (default)
let g:krlFoldLevel = 2 " close all folds on startup
let g:krlKeyWord = 1 " don't treat $, # and & as word char
au BufNewFile,BufRead *.src set textwidth=999
au BufNewFile,BufRead *.src set fileencoding=utf-8
"____________________________________________________________________________________________________________________
" FANUC karel
"
autocmd BufRead,BufNewFile *.PE set filetype=karel" Highlight karel syntax
autocmd BufRead,BufNewFile *.LS set filetype=karel" Highlight karel syntax
"____________________________________________________________________________________________________________________
" COMAU pdl2
"
autocmd BufRead,BufNewFile *.pdl set filetype=pdl2" Highlight pdl2 syntax
autocmd BufRead,BufNewFile *.var set filetype=pdl2" Highlight pdl2 syntax
"____________________________________________________________________________________________________________________
" CSharp/XAML
"
autocmd BufRead,BufNewFile *.cs set filetype=cSharp" Highlight cSharp syntax
autocmd BufRead,BufNewFile *.xaml set filetype=xaml" Highlight xaml syntax
"____________________________________________________________________________________________________________________
"Python
"
set autoread
au FocusGained,BufEnter * checktime
au BufNewFile,BufRead *.py set textwidth=130
au BufNewFile,BufRead *.py set tabstop=4
au BufNewFile,BufRead *.py set softtabstop=4
au BufNewFile,BufRead *.py set shiftwidth=4
au BufNewFile,BufRead *.py set expandtab
au BufNewFile,BufRead *.py set autoindent
au BufNewFile,BufRead *.py set fileformat=unix
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
au BufWritePre *.py,*.pyw,*.c,*.h %s/\s\+$//e
let g:pytGoDefinitionKeyMap=1 " gd shows the declaration of curr. word
let $PATH .= ';' . $HOME . '\.vim\PortablePython382x64\App\Python;' .
				  \$HOME . '\.vim\PortablePython382x64\App\Scripts;'
				  \'C:\rtools40\usr\bin;C:\rtools40\mingw64\bin;'
let $PYTHONPATH .= $HOME . '\.vim\PortablePython382x64\App\Python;' .
				  \$HOME . '\.vim\PortablePython382x64\App\Python\Lib;' .
				  \$HOME . '\.vim\PortablePython382x64\App\Python\DLLs;' .
				  \$HOME . '\.vim\PortablePython382x64\App\Python\include;' .
				  \$HOME . '\.vim\PortablePython382x64\App\Python\libs;' .
				  \$HOME . '\.vim\PortablePython382x64\App\Python\Scripts;' .
				  \$HOME . '\.vim\PortablePython382x64\App\Python\Tools;'
"____________________________________________________________________________________________________________________
" .CSV file
"
"autocmd BufRead,BufNewFile *.csv set filetype=csv" Highlight xml syntax
"____________________________________________________________________________________________________________________
" R 
"
autocmd BufNewFile,BufRead *.R set ft=r
autocmd BufNewFile,BufRead *.r set ft=r
let g:R_path = 'C:\\Program Files\\R\\R-4.0.0\\bin\\x64'
"____________________________________________________________________________________________________________________
" Functions
"
function! BuffersList()
  let all = range(0, bufnr('$'))
  let res = []
  for b in all
    if buflisted(b)
      call add(res, bufname(b))
    endif
  endfor
  return res
endfunction

function! GrepBuffers (expression)
  exec 'vimgrep/'.a:expression.'/ '.join(BuffersList())
  cope
endfunction

command! -nargs=+ GrepBufs call GrepBuffers(<q-args>)
