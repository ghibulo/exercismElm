let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
map! <S-Insert> <MiddleMouse>
inoremap <silent> <C-Tab> =UltiSnips#ListSnippets()
snoremap <silent>  c
xnoremap <silent> 	 :call UltiSnips#SaveLastVisualSelection()gvs
snoremap <silent> 	 :call UltiSnips#ExpandSnippet()
snoremap  "_c
vmap gx <Plug>NetrwBrowseXVis
nmap gx <Plug>NetrwBrowseX
map <S-Insert> <MiddleMouse>
vnoremap <silent> <Plug>NetrwBrowseXVis :call netrw#BrowseXVis()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#BrowseX(expand((exists("g:netrw_gx")? g:netrw_gx : '<cfile>')),netrw#CheckIfRemote())
nnoremap <silent> <Plug>(elm-browse-docs) :call elm#BrowseDocs()
nnoremap <silent> <Plug>(elm-show-docs) :call elm#ShowDocs()
nnoremap <silent> <Plug>(elm-error-detail) :call elm#ErrorDetail()
nnoremap <silent> <Plug>(elm-repl) :call elm#Repl()
nnoremap <silent> <Plug>(elm-test) :call elm#Test()
nnoremap <silent> <Plug>(elm-make-main) :call elm#Make("Main.elm")
nnoremap <silent> <Plug>(elm-make) :call elm#Make()
snoremap <silent> <Del> c
snoremap <silent> <BS> c
snoremap <silent> <C-Tab> :call UltiSnips#ListSnippets()
inoremap <silent> 	 =UltiSnips#ExpandSnippet()
let &cpo=s:cpo_save
unlet s:cpo_save
set autoindent
set autoread
set backspace=indent,eol,start
set backupdir=~/.vim/backups
set clipboard=unnamed
set copyindent
set directory=~/.vim/swaps
set expandtab
set fileencodings=ucs-bom,utf-8,default,latin1
set formatoptions=qrn1
set gdefault
set helplang=cs
set hidden
set history=999
set hlsearch
set ignorecase
set incsearch
set langmenu=en_US.UTF-8
set laststatus=2
set lazyredraw
set nomodeline
set mouse=a
set pastetoggle=,p
set printoptions=paper:a4
set report=0
set ruler
set runtimepath=~/.vim,~/.vim/plugged/vim-easy-align/,~/.vim/plugged/vim-github-dashboard/,~/.vim/plugged/ultisnips/,~/.vim/plugged/vim-snippets/,~/.vim/plugged/YCM-Generator/,~/.vim/plugged/vim-go/,~/.vim/plugged/gocode/vim/,~/.fzf/,~/my-prototype-plugin/,~/.vim/plugged/elm-vim/,/var/lib/vim/addons,/usr/share/vim/vimfiles,/usr/share/vim/vim80,/usr/share/vim/vimfiles/after,/var/lib/vim/addons/after,~/.vim/plugged/ultisnips/after,~/.vim/after
set scrolloff=5
set shiftwidth=4
set showcmd
set showmatch
set sidescroll=1
set sidescrolloff=7
set smartcase
set smarttab
set softtabstop=4
set spelllang=en_us
set splitbelow
set splitright
set nostartofline
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc
set noswapfile
set tabstop=4
set termencoding=utf-8
set textwidth=80
set timeoutlen=500
set title
set ttimeoutlen=100
set undolevels=999
set visualbell
set window=35
set nowritebackup
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/exercism2/elm/etl
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +0 Etl.elm
badd +0 tests/Tests.elm
argglobal
silent! argdel *
$argadd Etl.elm
$argadd tests/Tests.elm
set stal=2
edit Etl.elm
set splitbelow splitright
wincmd t
set winminheight=1 winheight=1 winminwidth=1 winwidth=1
argglobal
let s:cpo_save=&cpo
set cpo&vim
nmap <buffer> ;w <Plug>(elm-browse-docs)
nmap <buffer> ;d <Plug>(elm-show-docs)
nmap <buffer> ;e <Plug>(elm-error-detail)
nmap <buffer> ;r <Plug>(elm-repl)
nmap <buffer> ;t <Plug>(elm-test)
nmap <buffer> ;b <Plug>(elm-make-main)
nmap <buffer> ;m <Plug>(elm-make)
nmap <buffer> gf :call elm#util#GoToModule(expand('<cfile>'))
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=s1fl:{-,mb:\ ,ex:-},:--
setlocal commentstring=--\ %s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal copyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'elm'
setlocal filetype=elm
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=qrn1
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=^\\s*import\\s\\+
setlocal includeexpr=GetElmFilename(v:fname)
setlocal indentexpr=GetElmIndent()
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e,0=else,0=if,0=of,0=import,0=then,0=type,0|,0},0],0),=-},0=in
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal nomodeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
set numberwidth=5
setlocal numberwidth=5
setlocal omnifunc=elm#Complete
setlocal path=~/exercism2/elm/etl/src,~/exercism2/elm/etl/elm-stuff/packages/**/src,.,/usr/include,,
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
set relativenumber
setlocal relativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en_us
setlocal statusline=
setlocal suffixesadd=.elm
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'elm'
setlocal syntax=elm
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tags=
setlocal termkey=
setlocal termsize=
setlocal textwidth=80
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 12 - ((11 * winheight(0) + 17) / 34)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
12
normal! 0
tabedit tests/Tests.elm
set splitbelow splitright
wincmd t
set winminheight=1 winheight=1 winminwidth=1 winwidth=1
argglobal
if bufexists('tests/Tests.elm') | buffer tests/Tests.elm | else | edit tests/Tests.elm | endif
let s:cpo_save=&cpo
set cpo&vim
nmap <buffer> ;w <Plug>(elm-browse-docs)
nmap <buffer> ;d <Plug>(elm-show-docs)
nmap <buffer> ;e <Plug>(elm-error-detail)
nmap <buffer> ;r <Plug>(elm-repl)
nmap <buffer> ;t <Plug>(elm-test)
nmap <buffer> ;b <Plug>(elm-make-main)
nmap <buffer> ;m <Plug>(elm-make)
nmap <buffer> gf :call elm#util#GoToModule(expand('<cfile>'))
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=s1fl:{-,mb:\ ,ex:-},:--
setlocal commentstring=--\ %s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal copyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'elm'
setlocal filetype=elm
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=qrn1
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=^\\s*import\\s\\+
setlocal includeexpr=GetElmFilename(v:fname)
setlocal indentexpr=GetElmIndent()
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e,0=else,0=if,0=of,0=import,0=then,0=type,0|,0},0],0),=-},0=in
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal nomodeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
set numberwidth=5
setlocal numberwidth=5
setlocal omnifunc=elm#Complete
setlocal path=~/exercism2/elm/etl/src,~/exercism2/elm/etl/elm-stuff/packages/**/src,.,/usr/include,,
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
set relativenumber
setlocal relativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en_us
setlocal statusline=
setlocal suffixesadd=.elm
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'elm'
setlocal syntax=elm
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tags=
setlocal termkey=
setlocal termsize=
setlocal textwidth=80
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 17) / 34)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 012|
tabnext 1
set stal=1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
set winminheight=1 winminwidth=1
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
