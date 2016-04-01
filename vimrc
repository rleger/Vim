so ~/.vim/plugins.vim           " Plugins

filetype off                    " required
syntax enable
set nocompatible

if has("autocmd")
  filetype plugin indent on
endif

set wildmode=list:longest,full  " Show file suggestions on tab press
set wildmenu                    " e.g. :e file<tab>
set showcmd                     " Show the command (bottom right)
set noswapfile                  " No swap files
set backspace=indent,eol,start
set showtabline=0               " Hide tab bar
set nonumber                    " Be explicit about hiding line numbers
set linespace=16				" Macvim specific lineheight
set noshowmode                  " Hide the default mode text (e.g. -- INSERT -- below the statusline)
set laststatus=2                " Always show the statusline
set nowrap                      " don't wrap lines
set autoread                    " Automatically reload changed file
set autowriteall                " Automatically save file on buffer change
set complete=.,w,b,u            " Autocomplete to buffers, splits, unloaded buffers
vmap <leader>su ! awk '{ print length(), $0 \| "sort -n \| cut-d\\ -f2-" }'<cr>
"set textwidth=80
"set textwidth=0 wrapmargin=0

set tabstop=4                   " a tab is four spaces
set smarttab
" set tags+=tags,tags.vendors
set tags+=tags
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
set timeout timeoutlen=200 ttimeoutlen=100
set foldlevelstart=99           " don't open folds on open
set nofoldenable                " Disable by default, enable with zi

" For performance boost
set nocursorcolumn          " Don't show cursor column
set nocursorline            " Don't highlight cursor line
set norelativenumber        " Don't display cursor relative numbers
"syntax sync minlines=250
"syntax sync fromstart

" set macligatures                " Replace => and -> by symbols
" let g:enable_bold_font = 1      " Enable some font to be bolded

" Don't screw up folds when inserting text that might affect them, until
" leaving insert mode. Foldmethod is local to the window. Protect against
" screwing up folding when switching between windows.
"autocmd InsertEnter * if !exists('w:last_fdm') | let w:last_fdm=&foldmethod | setlocal foldmethod=manual | endif
"autocmd InsertLeave,WinLeave * if exists('w:last_fdm') | let &l:foldmethod=w:last_fdm | unlet w:last_fdm | endif

" Note, perl automatically sets foldmethod in the syntax file
"autocmd Syntax c,cpp,vim,xml,vue,blade,html,xhtml setlocal foldmethod=syntax
"autocmd Syntax c,cpp,vim,xml,vue,blade,html,xhtml,perl normal zR

" Enable % navigation between opening/closing tags
so ~/.vim/bundle/matchit/plugin/matchit.vim

au BufRead,BufNewFile *.txt,*.md set wrap linebreak nolist textwidth=0 wrapmargin=0

" If you prefer the Omni-Completion tip window to close when a selection is
" made, these lines close it on movement in insert mode or when leaving
" insert mode
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

" Vim will use the system clipboard
if has('unnamedplus')
  set clipboard=unnamed,unnamedplus
endif





"------------Custom filetypes ------------"
" Putting it in autogroup doesn't work
" Vue
" autocmd BufNewFile,BufRead *.vue set filetype=javascript | set filetype=html | set filetype=vue | :syntax sync fromstart
autocmd BufNewFile,BufRead *.vue set filetype=html | :syntax sync fromstart
""autocmd BufNewFile,BufRead *.vue set ft=html | set ft=javacscript | set ft=vue

" Blade
augroup autosourcing
    autocmd!	
    autocmd BufNewFile,BufRead *.blade.php set filetype=html | set filetype=phtml | set filetype=blade 
augroup END

" Autocomplete php language
autocmd FileType php set omnifunc=phpcomplete#CompletePHP

" Quick set filetype
command! Html :set ft=html
command! Vue :set ft=vue
command! Javascript :set ft=javascript


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

" Run Vundle plugin install/update
command! Ip :PluginInstall
command! Up :PluginUpdate
command! Cp :PluginClean

" Remap space to folding toggle
nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>

" Insert lines in normal mode w/ swiching to insert mode
" Enter will insert a line below
" Shift enter will insert a line above
" Cursor will remain @ same position
nmap <S-Enter> O<Esc>j
nmap <CR> o<Esc>k

" Ctags navigation
"alt : to go to definition
nnoremap ÷ <C-]>
"alt ; to come back
nnoremap … <C-T>

" Toggle line numbers
nmap <C-l><C-l> :set invnumber<CR>

" Select the line on <C-l>
map <C-l> <esc>V

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

"Run tests on file
nnoremap <leader>pu :Test %<cr>
nnoremap <leader>ps :! vendor/bin/phpspec run %<cr>

" Alternative to enter normal mode
" Remap jj => to escape (enter normal mode) 
inoremap jj <Esc>								

"Auto change directory to match current file ,cd
nnoremap ,cd :cd %:p:h<CR>:pwd<CR>

" Create/edit file in the current directory
nmap :ed :edit %:p:h/

" Abbreviations
abbrev gm !php artisan generate:model
abbrev gmp !php artisan generate:model:pivot
abbrev gc !php artisan generate:controller
abbrev gmig !php artisan generate:migration





"------------General-----------"
" Initialize tag files on laravel project creation
" Will generate a tags file that ignores vendor/ node_modules/ and public/
" Will generate a tags.vendor file with the vendor/ directory
" Will not do it if we're in $HOME directory
function! InitTags()
    if getcwd() == $HOME
        echoerr "You should not be generating tags for the home directory !!"
    else
        " execute ':silent! ! ctags -R --fields=+aimS --languages=php tags.vendors vendor' 
        " execute ':silent! ! ctags -R --fields=+aimS --languages=php --exclude=vendor --exclude=node_modules --exclude=public'
        execute ':silent! ! ctags -R --fields=+aimS --languages=php'
    endif
endfunction
:command! InitTags :call InitTags()

" Sort PHP use statements by length
" You don't have to select them first
" The cursor will return to the same place you left off.
function! SortPhpUseByLength()
    exec 'normal mrgg/^use\sma/^class\s/^use\sNmb:nohlsearch:''a,''b! awk ''{ print length(), $0 | "sort -n | cut -d\\  -f2-" }''''r'
endfunction
nmap <leader>su :call SortPhpUseByLength()<cr>

" Auto-remove trailing spaces
au BufWritePre *.php :%s/\s\+$//e

" Regenerate tags file on save
au BufWritePost *.php,*.js silent! !ctags -R --fields=+aimS --languages=php &

"------------Plugins-----------"
"/PHPfolding
" Disable php folding by default
let g:DisableAutoPHPFolding = 1
"
"/PHPUnit
let g:phpunit_cmd = "vendor/bin/phpunit"

"/Comma or semicolon sepation plugin
command! CommaOrSemiColon call cosco#commaOrSemiColon()
autocmd FileType php,javascript,css,vue nnoremap <silent> <Leader>; :call cosco#commaOrSemiColon()<CR>
autocmd FileType php,javascript,css,vue inoremap <silent> <Leader>; <c-o>:call cosco#commaOrSemiColon()<CR>

"/PHP Docblock
let g:pdv_template_dir = $HOME ."/.vim/bundle/pdv/templates_snip"
autocmd FileType php noremap <leader>db :call pdv#DocumentWithSnip()<CR>

"/EasyMotion 
let g:EasyMotion_leader_key = '<Leader>' 
" <Leader>f{char} to move to {char}
map  <leader><leader>f <Plug>(easymotion-bd-f)
nmap <leader><leader>f <Plug>(easymotion-overwin-f)

"/Table Mode
let g:table_mode_corner="|"


" Move to line
map <leader><leader>L <Plug>(easymotion-bd-jk)
nmap <leader><leader>L <Plug>(easymotion-overwin-line)

" Move to word
map  <leader><leader>w <Plug>(easymotion-bd-w)
nmap <leader><leader>w <Plug>(easymotion-overwin-w)
"
"/UltiSnip

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
                                         
" If you want :UltiSnipsEdit to split your window.
"let g:UltiSnipsEditSplit="vertical"

"
"/ CtrlP
"
let g:ctrlp_custom_ignore= 'public\|node_modules\|DS_Store\|git'
let g:ctrlp_match_window = 'order:ttb,min:1,max:10,results:10'
let g:ctrlp_extension = ['buffertag']
let g:ctrlp_working_path_mode = 'r'                         " Use the nearest .git directory as the cwd
let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --hidden
  \ --ignore .git
  \ --ignore .DS_Store
  \ --ignore vendor
  \ --ignore node_modules
  \ --ignore tmp
  \ --ignore "**/*.pyc"
  \ -g ""'

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
nnoremap <C-t> :BuffergatorTabsToggle<cr>                     

"Toggle Buffergator (for whatever reason, putting this comment on the same
"line will make Buffergator cycle through each buffer first...)
nnoremap <C-b> :BuffergatorToggle<cr>

let g:buffergator_suppress_keymaps = 1                       " suppress BufferGator default mapping

" Close buffer
nmap <leader>bq :Bclose<cr>                           

"
"/ PHP-CS-Fixer

" let g:php_cs_fixer_level = "psr2"              " which level ?
" let g:php_cs_fixer_config = "default"             " configuration
" let g:php_cs_fixer_php_path = "php"               " Path to PHP
" let g:php_cs_fixer_fixers_list = "align_double_arrow,linefeed,indentation"
" let g:php_cs_fixer_enable_default_mapping = 0     " Enable the mapping by default (<leader>pcd)

"Remap default to save before running (avoid losing unsaved changes)
" nnoremap <silent><leader>pf :w<bar>:call PhpCsFixerFixFile()<CR>
"
"Alerternative to php-cs-fixer plugin
" let g:php_cs_fixer_enable_default_mapping = 0 " disable default mapping
nnoremap <silent><leader>pf :w<bar>:call SortPhpUseByLength()<bar>:silent ! ~/.composer/vendor/bin/php-cs-fixer fix % --level=symfony --fixers=align_double_arrow<CR>

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
"/ Ag plugin
"
let g:ag_prg='ag -S --nocolor --nogroup --column --ignore node_modules --ignore "./public/*" --ignore "./vendor/*"'
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
:nmap <leader>gq :silent windo !git add %<cr><bar>:silent Gcommit<cr>

set diffopt+=vertical           " Force open diff in vertical split

"
"/ PHP insert
" Import class at the top (use)
"
function! IPhpInsertUse()
    call phpinsertuse()
    call feedkeys('a',  'n')
endfunction

autocmd FileType php inoremap <Leader>u <Esc>:call IPhpInsertUse()<CR>
autocmd FileType php noremap <Leader>u :call PhpInsertUse()<CR>

" Expand fully qualified class name
function! IPhpExpandClass()
    call PhpExpandClass()
    call feedkeys('a', 'n')
endfunction

autocmd FileType php inoremap <Leader>e <Esc>:call IPhpExpandClass()<CR>
autocmd FileType php noremap <Leader>e :call PhpExpandClass()<CR>

"
"/ Multiline
"
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_next_key='<C-d>'
let g:multi_cursor_prev_key='<C-s>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'
let g:multi_cursor_exit_from_insert_mode=0          " Don't exit when pressing <esc> in insert mode

"
"/ Airline (bottom statusbar)
"
" let g:airline_theme='solarized'
" let g:airline_theme = "hybrid"
let g:airline_powerline_fonts=0                     " No powerline by default
if has("gui_running")
    let g:airline_powerline_fonts=1                 " Powerline fonts on GUI
endif
"let g:airline#extensions#tabline#enabled = 1       " Enable the list of buffers
"let g:airline#extensions#tabline#fnamemod = ':t'   " Show just the filename

"
"/ Emmet
"
let g:user_emmet_mode='i'                           " Enable only in insert mode
let g:user_emmet_leader_key='<C-e>'                 " Redefine mapping

" Just for html and css
let g:user_emmet_install_global = 0

" Enable emmet on html and css
autocmd FileType html,css,vue,blade EmmetInstall

"
"/ Syntastic
"
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_loc_list_height = 5                 " Error window line height
let g:syntastic_php_checkers = ['php', 'phpmd']     " PHP checkers
let g:syntastic_html_tidy_exec = '/usr/bin/tidy'    " Html checker
let g:syntastic_html_tidy_ignore_errors = [ 
    \ '<template> is not recognized!',
    \'discarding unexpected <template>' 
    \]

" Syntastic in active mode, ignore html (to ignore .vue files)
let g:syntastic_mode_map = {
    \ "mode": "active",
    \ "passive_filetypes": ["html"] 
    \}

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
let g:gitgutter_override_sign_column_highlight = 0

"
"/ NERDTree
"
" Toggle Nerdtree
nnoremap - :NERDTreeToggle<cr>
nnoremap <leader>r :NERDTreeFind<cr>
let NERDTreeHijackNetrw=1           " Replace Netrw by NerdTree
let NERDTreeMinimalUI=1             " Set the UI to the minium
let NERDTreeAutoDeleteBuffer=1      " Delete buffer after file rename or del
let NERDTreeQuitOnOpen = 1          " Close on file opening
"
"/ PHP Insert Use
"
augroup autosourcing
    autocmd!	
    autocmd FileType php inoremap <Leader>u <Esc>:call IPhpInsertUse()<CR>
    autocmd FileType php noremap <Leader>u :call phpinsertuse()<CR>
augroup END

"
"/ PHP CS Fixer
"
"nnoremap <silent><C-b> :call PhpCsFixerFixFile()<CR>





"------------Visual-----------"
set background=dark
" colorscheme mod8
" colorscheme desert
" colorscheme hybrid_reverse
colorscheme hybrid_material
" colorscheme earthsong 
" colorscheme goldfish 
" colorscheme atom-dark
" colorscheme Slate
" colorscheme Peacock
set t_CO=256						" Use 256 teminal colors
"set guifont=Operator_Mono:h15			
set guifont=Fira_Code:h14			" Set font family and size

set guioptions-=l					" Remove scrollbars (left and right)
set guioptions-=L
set guioptions-=r
set guioptions-=R
set guioptions-=e                   " Add tab pages 





" --- Theme modifications
" Display vsplit bar with a color
hi vertsplit guibg=#212D32 guifg=#212D32
hi FoldColumn guibg=bg guifg=white
hi SignColumn guibg=bg
hi LineNr guibg=bg guifg=#4F5B67
" Matching parenthesis and such highlight
hi MatchParen cterm=none guibg=#212D32 guifg=#1BADF8  





"------------Searching-----------"
set hlsearch								" Highlight search
set incsearch								" Highlight search as you type





"------------Split Management-----------"
set splitbelow								" Split will be created below and to the right
set splitright

" Open splits
nmap vs :vsplit<cr>
nmap sp :split<cr>

"Remap vertical split navigation
"nmap <C-J> <C-W><C-J>						
"nmap <C-k> <C-W><C-K>
"nmap <C-m> <C-W><C-H>
"nmap <C-l> <C-W><C-L>

"Mapping with alt to move between splits
nmap <silent> È :wincmd k<CR>
nmap <silent> Ï :wincmd j<CR>
nmap <silent> Ì :wincmd h<CR>
nmap <silent> ¬ :wincmd l<CR>

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
set wildignore+=*/vendor/**,node_modules/*,.DS_Store,tags,tags.*

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
command! StatSMUR :cd ~/Sites/StatSMUR<bar>:OpenSession StatSMUR
command! Anniversaire :cd ~/Sites/anniversaire<bar>:OpenSession anniversaire
command! Fidelio :cd ~/Sites/Fidelio :OpenSession Fidelio
command! MonUrologue :OpenSession MonUrologue
command! LldAdmin :OpenSession LldAdmin
command! LldFront :OpenSession LldFront
command! TheseEJ :cd ~/Sites/TheseEJ :OpenSession TheseEJ
command! MaCave :cd ~/Sites/MaCave<bar>:OpenSession MaCave
command! Reservations :cd ~/Sites/Reservations<bar>:OpenSession Reservations

"Without sessions
"command! MonUrologue :cd ~/Sites/mon-urologue<bar>:CtrlP<cr>





"----------Fast navigation in projects-------------"
"Laravel routes

" Laravel framework commons
nmap <leader>lr :e app/Http/routes.php<cr>
nmap <leader>lca :e config/app.php<cr>157G
nmap <leader>lcd :e config/database.php<cr>
nmap <leader>lc :e composer.json<cr>

"Vue routes
nmap <leader>lrv :e resources/vue/routes.js<cr>          

nmap <leader>a :! php artisan<space>





"-----------Sessions------------"
let g:session_autoload = 'no'           " Session will not try to autoload
let g:session_autosave = 'yes'          " Automatically save sessions
let g:session_lock_enabled = 0          " Disable sessions lock
let g:session_command_aliases = 1       " Create convinient aliases
let g:session_persist_colors = 0        " Don't save color theme w session
let g:session_persist_font = 0          " Don't save fonts


" Required after theme load to clear gitgutter background
hi clear SignColumn



" let @d="I// ^[A //^[yyppkkV:s/./\//g^M, jjV:<80>ku^M, j"
" nmap ,y @d

" Add a new dependency to a PHP class
function! AddDependency()
    let dependency = input('Var Name: ')
    let namespace = input('Class Path: ')

    let segments = split(namespace, '\')
    let typehint = segments[-1]

    exec 'normal gg/construct^M:H^Mf)i, ' . typehint . ' $' . dependency . '^[/}^>O$this->^[a' . dependency . ' = $' . dependency . ';^[?{^MkOprotected $' . dependency . ';^M^[?{^MOuse ' . namespace . ';^M^['

    " Remove opening comma if there is only one dependency
    exec 'normal :%s/(, /(/g'
endfunction
nmap ,2  :call AddDependency()<cr>
"-----------Notes----------"

"
" -- Navigate
" 
" <C-o> previous position
" <C-i> next position => is actually <tab>.. and I remap it !
" <C-w-o> Current buffer to fullscreen
" 
" . repeat last command
" ; repeat last search (ex : f+ to find +)
" -- Ctags
" alt-: to go to definition
" alt-; to come back

" -- Normal
" Enter to insert line bk after, shift enter to insert above

" -- Insert
" <C-n> Autocomplete (insert mode)
"
" -- Visual
" vit Visual edit inside tag
" cf, change until , (included as opposed to ct,)
" vU  Uppercase letter 
" vu  Lowercase letter
" gUU Uppercase line
" guu Lowercase line
"
" A - put the cursor at the end of the line in insert mode
" I - put the cursor at begining of the line in insert mode
" e – go to the end of the current word.
" E – go to the end of the current WORD.
" b – go to the previous (before) word.
" B – go to the previous (before) WORD.
" w – go to the next word.
" W – go to the next WORD.
" gi - Insert text in the same position as where Insert mode
"
"
" H – Go to the first line of current screen.
" M – Go to the middle line of current screen.
" L – Go to the last line of current screen.
"
" -- Operation on multiple lines
" 1) Select visually
" 2) :'<,'>normal . -> will repeat the last commmand on all lines
"
"
" -- NERDTree
" go - Open file without leaving nerdtree
" I - Toggle invisible files
" m - access secondary commands
" u - Move tree root up a dir
" C - Set current directory as root
"
" -- Multiple cursors
" <C-d> Select next
" <C-s> Select previous
" <C-x> Skip
" <Esc> Get out
"
" ,pcf Php cs fixer (file)
" ,pcd Php cs fixer (directory)
"
"
"
"
"---------------------
"function! TextEnableCodeSnip(filetype,start,end,textSnipHl) abort
"    let ft=toupper(a:filetype)
"    let group='textGroup'.ft
"    if exists('b:current_syntax')
"        let s:current_syntax=b:current_syntax
"        " Remove current syntax definition, as some syntax files (e.g. cpp.vim)
"        " do nothing if b:current_syntax is defined.
"        unlet b:current_syntax
"    endif
"    execute 'syntax include @'.group.' syntax/'.a:filetype.'.vim'
"    try
"        execute 'syntax include @'.group.' after/syntax/'.a:filetype.'.vim'
"    catch
"    endtry
"    if exists('s:current_syntax')
"        let b:current_syntax=s:current_syntax
"    else
"        unlet b:current_syntax
"    endif
"    execute 'syntax region textSnip'.ft.'
"                \ matchgroup='.a:textSnipHl.'
"                \ start="'.a:start.'" end="'.a:end.'"
"                \ contains=@'.group
"endfunction
"
"call TextEnableCodeSnip('html', '<template>', '</template>', 'SpecialComment')
"call TextEnableCodeSnip('javascript', '<script>', '</script>', 'SpecialComment')
"
