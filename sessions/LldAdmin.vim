" ~/bin/dotfiles/vim/sessions/LldAdmin.vim:
" Vim session script.
" Created by session.vim 2.13.1 on 26 mars 2016 at 10:35:22.
" Open this file in Vim and run :source % to restore your session.

set guioptions=gm
if exists('g:syntax_on') != 1 | syntax on | endif
if exists('g:did_load_filetypes') != 1 | filetype on | endif
if exists('g:did_load_ftplugin') != 1 | filetype plugin on | endif
if exists('g:did_indent_on') != 1 | filetype indent on | endif
call setqflist([{'lnum': 16, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': '/Users/romainleger/Sites/StatSMUR/resources/vue/app.vue', 'text': '<script lang="es">'}, {'lnum': 0, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'resources/vue/views/projects/index.vue', 'text': ''}, {'lnum': 17, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': '/Users/romainleger/Sites/StatSMUR/resources/vue/components/formTypeaheadHelper.vue', 'text': '<script lang="es">'}, {'lnum': 0, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'resources/vue/views/projects/index.vue', 'text': ''}, {'lnum': 6, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': '/Users/romainleger/Sites/StatSMUR/resources/vue/components/object-links.vue', 'text': '<script lang="es">'}, {'lnum': 0, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'resources/vue/views/projects/index.vue', 'text': ''}, {'lnum': 27, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': '/Users/romainleger/Sites/StatSMUR/resources/vue/components/prescription-add-modal.vue', 'text': '<script lang="es">'}, {'lnum': 0, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'resources/vue/views/projects/index.vue', 'text': ''}, {'lnum': 27, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': '/Users/romainleger/Sites/StatSMUR/resources/vue/components/prescription-update-modal.vue', 'text': '<script lang="es">'}, {'lnum': 0, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'resources/vue/views/projects/index.vue', 'text': ''}, {'lnum': 36, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': '/Users/romainleger/Sites/StatSMUR/resources/vue/components/project-add-modal.vue', 'text': '<script lang="es">'}, {'lnum': 0, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'resources/vue/views/projects/index.vue', 'text': ''}, {'lnum': 36, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': '/Users/romainleger/Sites/StatSMUR/resources/vue/components/project-update-modal.vue', 'text': '<script lang="es">'}, {'lnum': 0, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'resources/vue/views/projects/index.vue', 'text': ''}, {'lnum': 54, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': '/Users/romainleger/Sites/StatSMUR/resources/vue/components/tags-input.vue', 'text': '<script lang="es">'}, {'lnum': 0, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'resources/vue/views/projects/index.vue', 'text': ''}, {'lnum': 166, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'resources/vue/views/objects/edit.vue', 'text': '<script lang="es">'}, {'lnum': 0, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'resources/vue/views/projects/index.vue', 'text': ''}, {'lnum': 166, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'resources/vue/views/objects/duplicate.vue', 'text': '<script lang="es">'}, {'lnum': 0, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'resources/vue/views/projects/index.vue', 'text': ''}, {'lnum': 101, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'resources/vue/views/projects/index.vue', 'text': '<script lang="es">'}, {'lnum': 0, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'resources/vue/views/projects/index.vue', 'text': ''}, {'lnum': 84, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'resources/vue/views/projects/prescriptions/show.vue', 'text': '<script lang="es">'}])
let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/Sites/lld-admin
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +51 config/filesystems.php
badd +1 config/laravel-backup.php
badd +16 app/Http/Controllers/API/MaintenanceController.php
badd +3 app/Jobs/TriggerBackup.php
argglobal
silent! argdel *
edit app/Jobs/TriggerBackup.php
set splitbelow splitright
wincmd t
set winheight=1 winwidth=1
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal nofen
silent! normal! zE
let s:l = 28 - ((17 * winheight(0) + 11) / 22)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
28
normal! 019|
tabnext 1
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
tabnext 1
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
