syntax enable

filetype off                    " required
filetype plugin on
set nocompatible                " be iMproved, required

so ~/.vim/plugins.vim           " Plugins

set wildmode=list:longest,full  " Show file suggestions on tab press
set wildmenu                    " e.g. :e file<tab>
set showcmd                     " Show the command (bottom right)
set noswapfile                  " No swap files
set backspace=indent,eol,start
set showtabline=0               " Hide tab bar
set nonumber                    " Be explicit about hiding line numbers
set linespace=15				" Macvim specific lineheight
set noshowmode                  " Hide the default mode text (e.g. -- INSERT -- below the statusline)
set laststatus=2                " Always show the statusline
set nowrap                      " don't wrap lines
"set textwidth=80
"set textwidth=0 wrapmargin=0

set tabstop=4                   " a tab is four spaces
set smarttab
set tags+=tags,tags.vendors
set softtabstop=4               " when hitting <BS>, pretend like a tab is removed, even if spaces
set expandtab                   " expand tabs by default (overloadable per file type later)
set shiftwidth=4                " number of spaces to use for autoindenting
set shiftround                  " use multiple of shiftwidth when indenting with '<' and '>'
set backspace=indent,eol,start  " allow backspacing over everything in insert mode
set autoindent                  " always set autoindenting on
                                set copyindent                  " copy the previous indentation on autoindenting
set ignorecase                  " ignore case when searching
set smartcase                   " ignore case if search pattern is all lowercase,
set visualbell                  " don't beep
set noerrorbells                " don't beep
set autowrite                   " Save on buffer switch
set mouse=a
set linespace=16                " Set linespace to 16
set timeout timeoutlen=200 ttimeoutlen=100
"set timeoutlen=1000             " Incease key sequence time for commands
set foldmethod=indent
set foldlevelstart=20

" For performance boost
set nocursorcolumn          " Don't show cursor column
set nocursorline            " Don't highlight cursor line
set norelativenumber        " Don't display cursor relative numbers
syntax sync minlines=256

let g:enable_bold_font = 1      " Enable some font to be bolded

" Don't screw up folds when inserting text that might affect them, until
" leaving insert mode. Foldmethod is local to the window. Protect against
" screwing up folding when switching between windows.
"autocmd InsertEnter * if !exists('w:last_fdm') | let w:last_fdm=&foldmethod | setlocal foldmethod=manual | endif
"autocmd InsertLeave,WinLeave * if exists('w:last_fdm') | let &l:foldmethod=w:last_fdm | unlet w:last_fdm | endif

" Note, perl automatically sets foldmethod in the syntax file
"autocmd Syntax c,cpp,vim,xml,vue,blade,html,xhtml setlocal foldmethod=syntax
"autocmd Syntax c,cpp,vim,xml,vue,blade,html,xhtml,perl normal zR
set nofoldenable    " disable folding

" Enable % navigation between opening/closing tags
so ~/.vim/bundle/matchit/plugin/matchit.vim

:command! InitTags execute ':silent! ! ctags -R --PHP-kinds=+cf -f tags.vendors vendor' | execute ':silent! ! ctags -R --PHP-kinds=+cf --exclude=vendor --exclude=node_modules --exclude=public'
                                ":command! -nargs=1 Silent execute ':silent !'.<q-args> | execute ':redraw!'

"------------Custom filetypes ------------"

augroup autosourcing
	autocmd!	
    " Vue
    autocmd BufNewFile,BufRead *.vue set ft=html | set ft=javacscript | set ft=vue

    " Blade
    autocmd BufNewFile,BufRead *.blade.php set ft=html | set ft=phtml | set ft=blade 
augroup END
                                "------------Mappings-----------"
" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","

" Fast saves
nmap <leader>w :w!<cr>

" Remap redo to U
nmap U :redo<cr>

" Down is really the next line
nnoremap j gj
nnoremap k gk

nnoremap <leader>pi :PluginInstall<cr>
nnoremap <leader>pu :PluginUpdate<cr>

" Map tab to indent in all modes
nnoremap <Tab> >>_
nnoremap <S-Tab> <<_
inoremap <S-Tab> <C-D>
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv

" Ctags navigation
"alt-l to go to definition
nnoremap ¬ <C-]>
"alt-h to come back
nnoremap Ì <C-T>

" Toggle line numbers
nmap <C-l><C-l> :set invnumber<CR>

" Find a tag
nmap <leader>f :tag<space>

" Autoclose tag on </<space>
iabbrev </ </<C-X><C-O>

" Make it easy to edit the Vimrc file
nmap <Leader>ev :e $MYVIMRC<cr>
nmap <Leader>ep :e ~/.vim/plugins.vim<cr>

" Add simple highlight removal
nmap <Leader><space> :nohlsearch<cr>

" Move line up and down with Ctrl-(j: down, k: up) 
nnoremap <C-k> :m .-2<CR>==
nnoremap <C-j> :m .+1<CR>==
inoremap <C-j> <Esc>:m .+1<CR>==gi
inoremap <C-k> <Esc>:m .-2<CR>==gi
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

" Multiple line move
" Ï = alt-j and È = alt-k
" J will navigate down 10 lines (5J)
nnoremap Ï 10j								
" K will navigate up 10 lines (5K)
nnoremap È 10k								

" Alternative to enter normal mode
" Remap jj => to escape (enter normal mode) 
imap jj <Esc>								

"Auto change directory to match current file ,cd
                                                                nnoremap ,cd :cd %:p:h<CR>:pwd<CR>

" Create/edit file in the current directory
nmap :ed :edit %:p:h/





"------------Plugins-----------"
"
"/ CtrlP
"
let g:ctrlp_custom_ignore= 'node_modules\|DS_Store\|git'
let g:ctrlp_match_window = 'top,order:ttb,min:1,max:30,results:30'
let g:ctrlp_extension = ['buffertag']
let g:ctrlp_working_path_mode = 'r'                         " Use the nearest .git directory as the cwd

" Easy bindings for its various modes
nmap <leader>p :CtrlP<cr>
nmap <C-r> :CtrlPBufTag<cr>
nmap <C-e> :CtrlPMRUFiles<cr>

"
"/ Buffergator
"
let g:buffergator_viewport_split_policy = 'R'               " Use the right side of the screen

"nmap <leader>jj :BuffergatorMruCyclePrev<cr>                " Go to the previous buffer open
"nmap <leader>kk :BuffergatorMruCycleNext<cr>                " Go to the next buffer open

" Create new tab
nmap <leader>nt :tabnew<cr>                                  
" Create new tab
nmap <leader>ct :tabclose<cr>                                

" Open tabs
map <leader>t :BuffergatorTabsToggle<cr>                     

"Toggle Buffergator (for whatever reason, putting this comment on the same
"line will make Buffergator cycle through each buffer first...)
map <leader>b :BuffergatorToggle<cr> 
let g:buffergator_suppress_keymaps = 1                       " suppress BufferGator default mapping

" Close buffer
nmap <leader>bq :Bclose<cr>                           

"
"/ PHP-CS-Fixer
"
let g:php_cs_fixer_level = "symfony"   
let g:php_cs_fixer_config_file = '.php_cs'
nnoremap <silent><leader>pf :call PhpCsFixerFixFile()<CR>


"
"/ Dash integration
"
nmap <leader>d :Dash<cr>

"
"/ Greplace settings (global search & replace)
"
" Set engine to Ag
set grepprg=ag

let g:grep_cmd_opts = '--line-numbers --noheading'

"
"/ Vim fugitive (git)
"
" Git status
nmap <leader>gs :Gstatus<cr>
" Git commit
nmap <leader>gc :Gcommit<cr>
" Git read, save after
nmap <leader>gr :Gread<bar>:w<cr>
" Git quick commit 
:nmap <leader>gq :windo !git add %<cr><bar>:Gcommit<cr>

set diffopt+=vertical           " Force open diff in vertical split

"
"/ PHP insert
" Import class at the top (use)
"
function! IPhpInsertUse()
    call PhpInsertUse()
    call feedkeys('a',  'n')
endfunction

"
"/ Multiline
"
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_next_key='<C-d>'
let g:multi_cursor_prev_key='<C-s>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'
let g:multi_cursor_exit_from_insert_mode=0           "Don't exit when pressing <esc> in insert mode
"let g:multi_cursor_normal_maps={'j':1, 'k':1, 'l':1, 'm':1, '!':1, '@':1, '=':1, 'q':1, 'r':1, 't':1, 'T':1, 'y':1, '[':1, ']':1, '\':1, 'd':1, 'f':1, 'F':1, 'g':1, '"':1, 'z':1, 'c':1, '<':1, '>':1}

"
"/ Airline (bottom statusbar)
"
"let g:airline_theme='solarized'
let g:airline_theme = "hybrid"
let g:airline_powerline_fonts=0                     " No powerline by default
if has("gui_running")
    let g:airline_powerline_fonts=1                 " Powerline fonts on GUI
endif
"let g:airline#extensions#tabline#enabled = 1        " Enable the list of buffers
"let g:airline#extensions#tabline#fnamemod = ':t'    " Show just the filename

"
"/ Emmet
"
let g:user_emmet_mode='i'                       " Enable only in insert mode
let g:user_emmet_leader_key='<C-e>'             " Redefine mapping

" Just for html and css
let g:user_emmet_install_global = 0

augroup autosourcing
	autocmd!	
    autocmd FileType html,css EmmetInstall
augroup END
"
"/ Syntastic
"
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Turn automatic syntastic off until I figure it out
"
let g:syntastic_mode_map = {
\ "mode": "passive",
\ "active_filetypes": [],
\ "passive_filetypes": ["puppet"] }

"
"/ Gitgutter
"
set updatetime=250

let g:gitgutter_sign_added = '+'
let g:gitgutter_sign_modified = '•'
let g:gitgutter_sign_removed = '-'
let g:gitgutter_sign_removed_first_line = '^'
let g:gitgutter_sign_modified_removed = '▪︎'
let g:gitgutter_sign_column_always = 1              " Always show gitgutter

"
"/ NERDTree
"
" Toggle Nerdtree
nnoremap <C-t> :NERDTreeToggle<cr>      
nnoremap <leader>r :NERDTreeFind<cr>
let NERDTreeHijackNetrw=0

"
"/ NERDCommenter
"
" Don't create default mapping
"let NERDCreateDefaultMappings=0
" Toggle comments
map <leader>: <plug>NERDCommenterToggle

"
"/ PHP Insert Use
"
augroup autosourcing
	autocmd!	
    autocmd FileType php inoremap <Leader>u <Esc>:call IPhpInsertUse()<CR>
    autocmd FileType php noremap <Leader>u :call PhpInsertUse()<CR>
augroup END

"
"/ PHP CS Fixer
"
nnoremap <silent><C-b> :call PhpCsFixerFixFile()<CR>





"------------Visual-----------"
set background=dark
colorscheme hybrid_material
"colorscheme atom-dark
"colorscheme Slate
set t_CO=256						" Use 256 teminal colors
set guifont=Fira_Code:h14			" Set font family and size

set guioptions-=l					" Remove scrollbars (left and right)
set guioptions-=L
set guioptions-=r
set guioptions-=R
set guioptions-=e                   " Add tab pages 





"------------Searching-----------"
set hlsearch								" Highlight search
set incsearch								" Highlight search as you type





"------------Split Management-----------"
set splitbelow								" Split will be created below and to the right
set splitright

" Open splits
nmap vs :vsplit<cr>
nmap sp :split<cr>

" Remap vertical split navigation
"nmap <S-J> <C-W><C-J>						
"nmap <S-K> <C-W><C-K>
"nmap <S-H> <C-W><C-H>
"nmap <S-L> <C-W><C-L>
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

"Resize vsplit
nmap <C-v> :vertical resize +5<cr>
nmap 25 :vertical resize 40<cr>
nmap 50 <c-w>=
nmap 75 :vertical resize 120<cr>





"------------Auto-commands-----------"
" Automatically source the vimrc file on save

augroup autosourcing
	autocmd!	
	autocmd BufWritePost .vimrc source %
augroup END

" I don't want to pull up these folders/files when calling CtrlP
set wildignore+=*/vendor/**,node_modules/*,public/*,.DS_Store

" Powerline (Fancy thingy at bottom stuff)
"let g:Powerline_symbols = 'fancy'
"set encoding=utf-8                                  " Necessary to show Unicode glyphs


augroup vimrc_autocmd
    autocmd!
    autocmd cursorhold * set nohlsearch
    autocmd cursormoved * set hlsearch

    " Auto-remove trailing spaces
    autocmd BufWritePre *.php :%s/\s\+$//e
augroup END

"------------Projects-shortcuts-----------"
command! StatSMUR :cd ~/Sites/StatSMUR<bar>:CtrlP<cr>
command! MonUrologue :cd ~/Sites/mon-urologue<bar>:CtrlP<cr>
command! Fidelio :cd ~/Sites/Fidelio<bar>:CtrlP<cr>
command! LldAdmin :cd ~/Sites/lld-admin<bar>:CtrlP<cr>
command! LldFront :cd ~/Sites/lld-front<bar>:CtrlP<cr>

"-----------Sessions------------"
let g:session_autoload = 0          " Session will not try to autoload
let g:session_lock_enabled = 0      " Disable sessions lock
let g:session_command_aliases = 1   " Create convinient aliases
let g:session_persist_colors = 0    " Don't save color theme w session



" Required after theme load to clear gitgutter background
hi clear SignColumn








"-----------Notes----------"

"
" -- Navigate
"<.> Navigate to last insertion point
"
"<C-o> previous position
"<C-i> next position
"<C-w-o> Current buffer to fullscreen
"
"Ctags
"alt-l to go to definition
"alt-h to come back

" Insert
"<C-n> Autocomplete (insert mode)
"
"vit Visual edit inside tag
"
" Multiple cursors
" <C-d> Select next
" <C-s> Select previous
" <C-x> Skip
" <Esc> Get out
"
" ,pcf Php cs fixer (file)
" ,pcd Php cs fixer (directory)
"
