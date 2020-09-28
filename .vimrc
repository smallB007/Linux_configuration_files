call plug#begin('~/.vim/plugged')
"Plug 'neoclide/coc.nvim', {'branch': 'release'}"IntelliSense
Plug 'neoclide/coc-rls'
Plug 'neoclide/coc-json'
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/nerd-fonts'"Copy fonts from repo folder 'patched' to usr/share/fonts/truetype
Plug 'ctrlpvim/ctrlp.vim'
Plug 'rust-lang/rust.vim'
Plug 'majutsushi/tagbar'
Plug 'scrooloose/syntastic'
Plug 'rentalcustard/exuberant-ctags'
Plug 'andrewradev/sideways.vim'
Plug 'andrewradev/splitjoin.vim'
Plug 'andrewradev/switch.vim'
Plug 'vim-airline/vim-airline'"StatusBar
"Plug 'vim-airline/vim-airline-themes'
Plug 'ludovicchabant/vim-gutentags'
Plug 'dan-t/rusty-tags'
Plug 'ryanoasis/vim-devicons'"Must be last one
call plug#end()

"Rust Pmenu color (neoclide plugin)
 """ Customize colors
func! s:my_colors_setup() abort
    " this is an example
    hi Pmenu guibg=#000000 gui=NONE
    hi PmenuSel guibg=#000000 gui=NONE
    hi PmenuSbar guibg=#000000
    hi PmenuThumb guibg=#000000
endfunc

augroup colorscheme_coc_setup | au!
    au ColorScheme * call s:my_colors_setup()
augroup END

nmap <F8> :TagbarToggle<CR>
nmap <C-n> :NERDTreeToggle<ENTER>
nmap <F5> :CargoRun<ENTER>
nmap <F12> :PlugInstall<ENTER>
noremap ; l
noremap l k
noremap k j
noremap j h

" CTRL-C to copy (visual mode)
vmap <C-c> y
" CTRL-X to cut (visual mode)
vmap <C-x> x
" CTRL-V to paste (insert mode)
imap <C-v> <esc>P

highlight Cursor guifg=white guibg=black
highlight iCursor guifg=white guibg=steelblue
set guicursor=n-v-c:block-Cursor
set guicursor+=i:ver100-iCursor
set guicursor+=n-v-c:blinkon0
set guicursor+=i:blinkwait1
set encoding=UTF-8
"The below will create rusty-tags.vi file(IntelliSense). You can always run
"manually anywere in the project rusty-tags vi
"https://github.com/dan-t/rusty-tags
autocmd BufRead *.rs :setlocal tags=./rusty-tags.vi;/

set number

colorscheme Atelier_ForestDark_cpy
"Debugging with gdb and termdebug
let g:termdebug_popup = 0
let g:termdebug_wide = 163
:packadd termdebug
