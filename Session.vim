let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/Documentos/catolink
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +51 ~/wiki/vimwiki/index.wiki
badd +12 ~/wiki/vimwiki/Work.wiki
badd +4 ~/wiki/vimwiki/Kanban.wiki
badd +1 ~/wiki/vimwiki/Kanban\ -\ Trabalho.wiki
badd +1 ~/wiki/vimwiki/Kanban\ -\ Trabalho\ -\ ToDo.wiki
badd +1 ~/wiki/vimwiki/Kanban\ -\ Trabalho\ -\ Doing.wiki
badd +1 ~/wiki/vimwiki/Kanban\ -\ Trabalho\ -\ Done.wiki
badd +1 ~/wiki/vimwiki/Kanban\ -\ Trabalho\ -\ Someday.wiki
badd +1 ~/wiki/vimwiki/Terço\ Online.wiki
badd +0 panes
badd +0 help\ pane
badd +0 help
argglobal
%argdel
$argadd ~/wiki/vimwiki/Kanban.wiki
tabnew +setlocal\ bufhidden=wipe
tabnew +setlocal\ bufhidden=wipe
tabrewind
edit ~/wiki/vimwiki/index.wiki
argglobal
balt ~/wiki/vimwiki/Work.wiki
setlocal fdm=expr
setlocal fde=VimwikiFoldListLevel(v:lnum)
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 56 - ((53 * winheight(0) + 27) / 54)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 56
normal! 0
tabnext
edit ~/wiki/vimwiki/Kanban\ -\ Trabalho\ -\ ToDo.wiki
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
3wincmd h
wincmd w
wincmd w
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 46 + 85) / 171)
exe 'vert 2resize ' . ((&columns * 45 + 85) / 171)
exe 'vert 3resize ' . ((&columns * 46 + 85) / 171)
exe '4resize ' . ((&lines * 27 + 28) / 57)
exe 'vert 4resize ' . ((&columns * 31 + 85) / 171)
exe '5resize ' . ((&lines * 26 + 28) / 57)
exe 'vert 5resize ' . ((&columns * 31 + 85) / 171)
argglobal
balt ~/wiki/vimwiki/Kanban\ -\ Trabalho\ -\ Doing.wiki
setlocal fdm=indent
setlocal fde=VimwikiFoldListLevel(v:lnum)
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 6 - ((5 * winheight(0) + 27) / 54)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 6
normal! 0
wincmd w
argglobal
if bufexists(fnamemodify("~/wiki/vimwiki/Kanban\ -\ Trabalho\ -\ Doing.wiki", ":p")) | buffer ~/wiki/vimwiki/Kanban\ -\ Trabalho\ -\ Doing.wiki | else | edit ~/wiki/vimwiki/Kanban\ -\ Trabalho\ -\ Doing.wiki | endif
if &buftype ==# 'terminal'
  silent file ~/wiki/vimwiki/Kanban\ -\ Trabalho\ -\ Doing.wiki
endif
balt ~/wiki/vimwiki/Kanban\ -\ Trabalho\ -\ Done.wiki
setlocal fdm=indent
setlocal fde=VimwikiFoldListLevel(v:lnum)
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 3 - ((2 * winheight(0) + 27) / 54)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 3
normal! 0
wincmd w
argglobal
if bufexists(fnamemodify("~/wiki/vimwiki/Kanban\ -\ Trabalho\ -\ Done.wiki", ":p")) | buffer ~/wiki/vimwiki/Kanban\ -\ Trabalho\ -\ Done.wiki | else | edit ~/wiki/vimwiki/Kanban\ -\ Trabalho\ -\ Done.wiki | endif
if &buftype ==# 'terminal'
  silent file ~/wiki/vimwiki/Kanban\ -\ Trabalho\ -\ Done.wiki
endif
balt ~/wiki/vimwiki/Kanban\ -\ Trabalho\ -\ Someday.wiki
setlocal fdm=indent
setlocal fde=VimwikiFoldListLevel(v:lnum)
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 1 - ((0 * winheight(0) + 27) / 54)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 0
wincmd w
argglobal
if bufexists(fnamemodify("~/wiki/vimwiki/Kanban\ -\ Trabalho\ -\ Someday.wiki", ":p")) | buffer ~/wiki/vimwiki/Kanban\ -\ Trabalho\ -\ Someday.wiki | else | edit ~/wiki/vimwiki/Kanban\ -\ Trabalho\ -\ Someday.wiki | endif
if &buftype ==# 'terminal'
  silent file ~/wiki/vimwiki/Kanban\ -\ Trabalho\ -\ Someday.wiki
endif
balt ~/wiki/vimwiki/Terço\ Online.wiki
setlocal fdm=indent
setlocal fde=VimwikiFoldListLevel(v:lnum)
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 1 - ((0 * winheight(0) + 13) / 27)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 0
wincmd w
argglobal
if bufexists(fnamemodify("~/wiki/vimwiki/Terço\ Online.wiki", ":p")) | buffer ~/wiki/vimwiki/Terço\ Online.wiki | else | edit ~/wiki/vimwiki/Terço\ Online.wiki | endif
if &buftype ==# 'terminal'
  silent file ~/wiki/vimwiki/Terço\ Online.wiki
endif
balt ~/wiki/vimwiki/Kanban\ -\ Trabalho\ -\ Someday.wiki
setlocal fdm=expr
setlocal fde=VimwikiFoldListLevel(v:lnum)
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=1
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 7 - ((6 * winheight(0) + 13) / 26)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 7
normal! 04|
wincmd w
exe 'vert 1resize ' . ((&columns * 46 + 85) / 171)
exe 'vert 2resize ' . ((&columns * 45 + 85) / 171)
exe 'vert 3resize ' . ((&columns * 46 + 85) / 171)
exe '4resize ' . ((&lines * 27 + 28) / 57)
exe 'vert 4resize ' . ((&columns * 31 + 85) / 171)
exe '5resize ' . ((&lines * 26 + 28) / 57)
exe 'vert 5resize ' . ((&columns * 31 + 85) / 171)
tabnext
edit help
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
split
1wincmd k
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe '1resize ' . ((&lines * 26 + 28) / 57)
exe '2resize ' . ((&lines * 27 + 28) / 57)
argglobal
balt ~/wiki/vimwiki/Terço\ Online.wiki
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 1 - ((0 * winheight(0) + 13) / 26)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 0
wincmd w
argglobal
enew | setl bt=help
help help.txt@en
balt help
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
silent! normal! zE
let &fdl = &fdl
let s:l = 1 - ((0 * winheight(0) + 13) / 27)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 0
wincmd w
2wincmd w
exe '1resize ' . ((&lines * 26 + 28) / 57)
exe '2resize ' . ((&lines * 27 + 28) / 57)
tabnext 3
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0 && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20
let &shortmess = s:shortmess_save
let &winminheight = s:save_winminheight
let &winminwidth = s:save_winminwidth
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
set hlsearch
nohlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
