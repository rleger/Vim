" ~/bin/dotfiles/vim/sessions/StatSMUR.vim:
" Vim session script.
" Created by session.vim 2.13.1 on 02 avril 2016 at 14:42:42.
" Open this file in Vim and run :source % to restore your session.

set guioptions=gm
if exists('g:syntax_on') != 1 | syntax on | endif
if exists('g:did_load_filetypes') != 1 | filetype on | endif
if exists('g:did_load_ftplugin') != 1 | filetype plugin on | endif
if exists('g:did_indent_on') != 1 | filetype indent on | endif
call setqflist([{'lnum': 55, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'app/helpers.php', 'text': '        return app(''user_permissions'')->isAllowed($action);'}, {'lnum': 0, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': '/Users/romainleger/.vimrc', 'text': ''}, {'lnum': 15, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'app/Http/Requests/CreateUserFormRequest.php', 'text': '        // return $this->currentUser->isAllowed(''users.create'');'}, {'lnum': 17, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'app/Http/Requests/CreateUserFormRequest.php', 'text': '        // return app(''user_permissions'')->user(auth()->user())->isAllowed(''users.create'')->get();'}, {'lnum': 0, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': '/Users/romainleger/.vimrc', 'text': ''}, {'lnum': 18, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'app/Http/Requests/UpdateUserFormRequest.php', 'text': '        return $this->currentUser->isAllowed(''users.update'', [User::class => $user_id]);'}, {'lnum': 0, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': '/Users/romainleger/.vimrc', 'text': ''}, {'lnum': 86, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'app/Permissions/Permissions.php', 'text': '    public function isAllowed($actions = [])'}, {'lnum': 0, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': '/Users/romainleger/.vimrc', 'text': ''}, {'lnum': 17, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'app/Transformers/MedicalActTransformer.php', 'text': '                // ''show''   => auth()->user()->isAllowed(''medicalActs.show.details'', $medicalAct) ? route(''medicalActs.show'', $medicalAct->id) : null,'}, {'lnum': 18, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'app/Transformers/MedicalActTransformer.php', 'text': '                // ''update'' => auth()->user()->isAllowed(''medicalActs.update'', $medicalAct) ? route(''medicalActs.edit'', $medicalAct->id) : null,'}, {'lnum': 19, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'app/Transformers/MedicalActTransformer.php', 'text': '                // ''delete'' => auth()->user()->isAllowed(''medicalActs.delete'', $medicalAct) ? route(''medicalActs.destroy'', $medicalAct->id) : null,'}, {'lnum': 0, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': '/Users/romainleger/.vimrc', 'text': ''}, {'lnum': 20, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'app/Transformers/PlaceTransformer.php', 'text': '                // ''show''   => auth()->user()->isAllowed(''places.show.details'', $place) ? route(''http.places.show'', $place->id) : null,'}, {'lnum': 21, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'app/Transformers/PlaceTransformer.php', 'text': '                // ''update'' => auth()->user()->isAllowed(''places.update'', $place) ? route(''http.places.edit'', $place->id) : null,'}, {'lnum': 22, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'app/Transformers/PlaceTransformer.php', 'text': '                // ''delete'' => auth()->user()->isAllowed(''places.delete'', $place) ? route(''http.places.destroy'', $place->id) : null,'}, {'lnum': 0, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': '/Users/romainleger/.vimrc', 'text': ''}, {'lnum': 20, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'app/Transformers/TransportKindTransformer.php', 'text': '                // ''show''   => auth()->user()->isAllowed(''transport_kind.show.details'', $transport_kind) ? route(''http.transport_kind.show'', $transport_kind->id) : null,'}, {'lnum': 21, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'app/Transformers/TransportKindTransformer.php', 'text': '                // ''update'' => auth()->user()->isAllowed(''transport_kind.update'', $transport_kind) ? route(''http.transport_kind.edit'', $transport_kind->id) : null,'}, {'lnum': 22, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'app/Transformers/TransportKindTransformer.php', 'text': '                // ''delete'' => auth()->user()->isAllowed(''transport_kind.delete'', $transport_kind) ? route(''http.transport_kind.destroy'', $transport_kind->id) : null,'}, {'lnum': 0, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': '/Users/romainleger/.vimrc', 'text': ''}, {'lnum': 20, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'app/Transformers/UserTransformer.php', 'text': '                // ''show''   => auth()->user()->isAllowed(''users.show.details'', $user) ? route(''http.users.show'', $user->id) : null,'}, {'lnum': 21, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'app/Transformers/UserTransformer.php', 'text': '                // ''update'' => auth()->user()->isAllowed(''users.update'', $user) ? route(''http.users.edit'', $user->id) : null,'}, {'lnum': 22, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'app/Transformers/UserTransformer.php', 'text': '                // ''delete'' => auth()->user()->isAllowed(''users.delete'', $user) ? route(''http.users.destroy'', $user->id) : null,'}, {'lnum': 0, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': '/Users/romainleger/.vimrc', 'text': ''}, {'lnum': 20, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'app/Transformers/VehicleTransformer.php', 'text': '                // ''show''   => auth()->user()->isAllowed(''vehicules.show.details'', $vehicle) ? route(''http.vehicules.show'', $vehicle->id) : null,'}, {'lnum': 21, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'app/Transformers/VehicleTransformer.php', 'text': '                // ''update'' => auth()->user()->isAllowed(''vehicules.update'', $vehicle) ? route(''http.vehicules.edit'', $vehicle->id) : null,'}, {'lnum': 22, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'app/Transformers/VehicleTransformer.php', 'text': '                // ''delete'' => auth()->user()->isAllowed(''vehicules.delete'', $vehicle) ? route(''http.vehicules.destroy'', $vehicle->id) : null,'}, {'lnum': 0, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': '/Users/romainleger/.vimrc', 'text': ''}, {'lnum': 23, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'app/Transformers/VectorTransformer.php', 'text': '                // ''show''   => auth()->user()->isAllowed(''vectors.show.details'', $vector) ? route(''http.vectors.show'', $vector->id) : null,'}, {'lnum': 24, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'app/Transformers/VectorTransformer.php', 'text': '                // ''update'' => auth()->user()->isAllowed(''vectors.update'', $vector) ? route(''http.vectors.edit'', $vector->id) : null,'}, {'lnum': 25, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'app/Transformers/VectorTransformer.php', 'text': '                // ''delete'' => auth()->user()->isAllowed(''vectors.delete'', $vector) ? route(''http.vectors.destroy'', $vector->id) : null,'}, {'lnum': 0, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': '/Users/romainleger/.vimrc', 'text': ''}, {'lnum': 433, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'app/Users/User.php', 'text': '    public function isAllowed($action, $target = null)'}, {'lnum': 442, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'app/Users/User.php', 'text': '            return app($testClass)->user($this)->isAllowed($action)->get();'}, {'lnum': 445, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'app/Users/User.php', 'text': '        return app($testClass)->user($this)->isAllowed($action)->on($target)->get();'}, {'lnum': 449, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'app/Users/User.php', 'text': '     * Negative of isAllowed.'}, {'lnum': 458, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'app/Users/User.php', 'text': '        return !$this->isAllowed($action, $target);'}, {'lnum': 0, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': '/Users/romainleger/.vimrc', 'text': ''}, {'lnum': 14, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'tests/API/ApiSmursJobsTest.php', 'text': '        // Necessary otherwise isAllowed will fail'}, {'lnum': 0, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': '/Users/romainleger/.vimrc', 'text': ''}, {'lnum': 13, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'tests/API/ApiSmursPatientsTest.php', 'text': '        // Necessary otherwise isAllowed will fail'}, {'lnum': 0, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': '/Users/romainleger/.vimrc', 'text': ''}, {'lnum': 14, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'tests/API/ApiSmursRolesTest.php', 'text': '        // Necessary otherwise isAllowed will fail'}, {'lnum': 0, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': '/Users/romainleger/.vimrc', 'text': ''}, {'lnum': 14, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'tests/API/ApiSmursVehiclesTest.php', 'text': '        // Necessary otherwise isAllowed will fail'}, {'lnum': 0, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': '/Users/romainleger/.vimrc', 'text': ''}, {'lnum': 13, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'tests/API/ApiUsersSmursPatientsTest.php', 'text': '        // Necessary otherwise isAllowed will fail'}, {'lnum': 0, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': '/Users/romainleger/.vimrc', 'text': ''}, {'lnum': 23, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'tests/API/ApiUsersSmursJobsTest.php', 'text': '        // Necessary otherwise isAllowed will fail'}, {'lnum': 0, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': '/Users/romainleger/.vimrc', 'text': ''}, {'lnum': 13, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'tests/API/ApiUsersSmursPatientsInterventionsTest.php', 'text': '        // Necessary otherwise isAllowed will fail'}, {'lnum': 35, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'tests/API/ApiUsersSmursPatientsInterventionsTest.php', 'text': '        // Necessary otherwise isAllowed will fail'}, {'lnum': 57, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'tests/API/ApiUsersSmursPatientsInterventionsTest.php', 'text': '        // Necessary otherwise isAllowed will fail'}, {'lnum': 0, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': '/Users/romainleger/.vimrc', 'text': ''}, {'lnum': 22, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'tests/API/ApiUsersSmursRolesTest.php', 'text': '        // Necessary otherwise isAllowed will fail'}, {'lnum': 0, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': '/Users/romainleger/.vimrc', 'text': ''}, {'lnum': 23, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'tests/API/ApiUsersSmursVehiclesTest.php', 'text': '        // Necessary otherwise isAllowed will fail'}, {'lnum': 0, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': '/Users/romainleger/.vimrc', 'text': ''}, {'lnum': 19, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'tests/spec/Permissions/UserPermissionsSpec.php', 'text': '        $this->isAllowed(''users.update'')'}, {'lnum': 26, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'tests/spec/Permissions/UserPermissionsSpec.php', 'text': '        $this->isAllowed([''users.update'', ''users.create''])'}, {'lnum': 53, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'tests/spec/Permissions/UserPermissionsSpec.php', 'text': '             ->isAllowed(''wrong.test.name'')->on($targetUser);'}, {'lnum': 68, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'tests/spec/Permissions/UserPermissionsSpec.php', 'text': '        $this->user($currentUser)->isAllowed(''create'')->get()'}, {'lnum': 79, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'tests/spec/Permissions/UserPermissionsSpec.php', 'text': '        $this->user($currentUser)->isAllowed(''create'')->get()'}, {'lnum': 93, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'tests/spec/Permissions/UserPermissionsSpec.php', 'text': '        $this->user($currentUser)->isAllowed(''show.list'')->get()'}, {'lnum': 104, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'tests/spec/Permissions/UserPermissionsSpec.php', 'text': '        $this->user($currentUser)->isAllowed(''show.list'')->get()'}, {'lnum': 126, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'tests/spec/Permissions/UserPermissionsSpec.php', 'text': '        $this->user($currentUser)->isAllowed(''show.list'')->on($targetUser)->get()'}, {'lnum': 148, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'tests/spec/Permissions/UserPermissionsSpec.php', 'text': '        $this->user($currentUser)->isAllowed(''show.list'')->on($targetUser)->get()'}, {'lnum': 174, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'tests/spec/Permissions/UserPermissionsSpec.php', 'text': '             ->isAllowed(''update'')->on($targetUser)->get()'}, {'lnum': 197, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'tests/spec/Permissions/UserPermissionsSpec.php', 'text': '             ->isAllowed(''update'')->on($targetUser)->get()'}, {'lnum': 219, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'tests/spec/Permissions/UserPermissionsSpec.php', 'text': '        $this->user($currentUser)->isAllowed(''delete'')->on($targetUser)->get()'}, {'lnum': 238, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'tests/spec/Permissions/UserPermissionsSpec.php', 'text': '        $this->user($currentUser)->isAllowed(''delete'')->on($targetUser)->get()'}])
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
badd +1 ~/.vimrc
badd +56 ~/bin/dotfiles/vim/plugins.vim
badd +1 ~/Documents/Web\ design/Resources/Laravel,\ Vue\ Starters/laravue
badd +1 \[Vundle]\ clean
badd +6 config/database.php
badd +6 app/Http/Controllers/API/AuthController.php
badd +88 app/Http/Requests/CreateInterventionForm.php
badd +1 ~/bin/dotfiles/vim/colors/material_green.vim
argglobal
silent! argdel *
argadd ~/Documents/Web\ design/Resources/Laravel,\ Vue\ Starters/laravue
edit ~/.vimrc
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 125 + 79) / 159)
exe 'vert 2resize ' . ((&columns * 33 + 79) / 159)
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
let s:l = 407 - ((13 * winheight(0) + 11) / 22)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
407
normal! 0
wincmd w
argglobal
edit ~/bin/dotfiles/vim/colors/material_green.vim
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal nofen
silent! normal! zE
let s:l = 65 - ((21 * winheight(0) + 11) / 22)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
65
normal! 0
wincmd w
exe 'vert 1resize ' . ((&columns * 125 + 79) / 159)
exe 'vert 2resize ' . ((&columns * 33 + 79) / 159)
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
