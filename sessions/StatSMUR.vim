" ~/bin/dotfiles/vim/sessions/StatSMUR.vim:
" Vim session script.
" Created by session.vim 2.13.1 on 15 février 2016 at 11:29:47.
" Open this file in Vim and run :source % to restore your session.

set guioptions=gm
if exists('g:syntax_on') != 1 | syntax on | endif
if exists('g:did_load_filetypes') != 1 | filetype on | endif
if exists('g:did_load_ftplugin') != 1 | filetype plugin on | endif
if exists('g:did_indent_on') != 1 | filetype indent on | endif
call setqflist([])
let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/Sites/StatSMUR
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +45 ~/.vimrc
badd +1 app/Http/routes.php
badd +4 resources/vue/routes.js
badd +1 ~/Homestead7/composer.json
badd +6 composer.json
badd +2 package.json
badd +72 resources/vue/views/interventions/create.vue
badd +1 resources/vue/views/interventions/resources/index.vue
badd +144 resources/vue/views/interventions/_create.vue
badd +162 resources/vue/components/intervention-patients.vue
badd +1 resources/vue/views/interventions/create/general.vue
argglobal
silent! argdel *
edit app/Http/routes.php
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd t
set winheight=1 winwidth=1
exe '1resize ' . ((&lines * 17 + 10) / 21)
exe 'vert 1resize ' . ((&columns * 79 + 74) / 149)
exe '2resize ' . ((&lines * 17 + 10) / 21)
exe 'vert 2resize ' . ((&columns * 69 + 74) / 149)
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 14 - ((6 * winheight(0) + 8) / 17)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
14
normal! 030|
wincmd w
argglobal
edit resources/vue/routes.js
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 4 - ((2 * winheight(0) + 8) / 17)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
4
normal! 0
wincmd w
exe '1resize ' . ((&lines * 17 + 10) / 21)
exe 'vert 1resize ' . ((&columns * 79 + 74) / 149)
exe '2resize ' . ((&lines * 17 + 10) / 21)
exe 'vert 2resize ' . ((&columns * 69 + 74) / 149)
tabedit resources/vue/views/interventions/create.vue
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 74 + 74) / 149)
exe 'vert 2resize ' . ((&columns * 74 + 74) / 149)
argglobal
setlocal fdm=syntax
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 73 - ((7 * winheight(0) + 9) / 19)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
73
normal! 021|
wincmd w
argglobal
edit resources/vue/views/interventions/create.vue
setlocal fdm=syntax
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 73 - ((9 * winheight(0) + 9) / 19)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
73
normal! 021|
wincmd w
exe 'vert 1resize ' . ((&columns * 74 + 74) / 149)
exe 'vert 2resize ' . ((&columns * 74 + 74) / 149)
tabnext 2
if exists('s:wipebuf')
"   silent exe 'bwipe ' . s:wipebuf
endif
" unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save

" Support for special windows like quick-fix and plug-in windows.
" Everything down here is generated by vim-session (not supported
" by :mksession out of the box).

1wincmd w
tabnext 2
if exists('s:wipebuf')
  if empty(bufname(s:wipebuf))
if !getbufvar(s:wipebuf, '&modified')
  let s:wipebuflines = getbufline(s:wipebuf, 1, '$')
  if len(s:wipebuflines) <= 1 && empty(get(s:wipebuflines, 0, ''))
    silent execute 'bwipeout' s:wipebuf
  endif
endif
  endif
endif
doautoall SessionLoadPost
unlet SessionLoad
" vim: ft=vim ro nowrap smc=128
