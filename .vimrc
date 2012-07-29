" git clone http://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
" BundleInstall

set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" My Bundles here:

Bundle 'Lokaltog/vim-powerline'
Bundle 'Align'
Bundle 'tpope/vim-rails'
Bundle 'vim-ruby/vim-ruby'
Bundle 'msanders/snipmate.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'kchmck/vim-coffee-script'
Bundle 'hallison/vim-markdown'
Bundle 'groenewege/vim-less'
Bundle 'bbommarito/vim-slim'
Bundle 'tomtom/tcomment_vim'
Bundle 'vim-scripts/copypath.vim'
" fuzzy_filder
Bundle 'L9'
Bundle 'FuzzyFinder'

Bundle 'wincent/Command-T'
" cd ~/.vim/bundle/Command-T/ruby/ ; ruby extconf.rb ; make
" themes
" Bundle 'altercation/vim-colors-solarized'
" Bundle 'tomasr/molokai'
Bundle 'jpo/vim-railscasts-theme'
Bundle 'jasonkuhrt/Tomorrow-Theme'

" 设置编码
set encoding=utf-8
" 设置文件编码
set fenc=utf-8
" 字体
set guifont=monaco:h14
" 不自动换行
set nowrap

set nobackup
set nowritebackup

"语法高亮
syntax on

"打开命令行补全菜单
set wildmenu
"关闭响铃，闪屏
set vb t_vb=
"显示行号
set nu
"马上跳到搜索匹配
set incsearch
"在查找时,高亮显示全部匹配字符
set hlsearch
"光标与顶部和底部始终保持一定行数
set scrolloff=3
"根据文件格式载入插件和缩进
filetype plugin indent on
set autoindent

"打开鼠标功能
set mouse=a

"指标符宽度
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab

" Display extra whitespace
" set list listchars=tab:»·,trail:·

let mapleader=";"

autocmd FileType make     set noexpandtab
autocmd FileType python   set noexpandtab
autocmd FileType eruby  set tabstop=2 shiftwidth=2
autocmd FileType ruby,rdoc set tabstop=2 shiftwidth=2
autocmd FileType html set tabstop=2 shiftwidth=2
autocmd FileType javascript set tabstop=2 shiftwidth=2
autocmd FileType coffee set tabstop=2 shiftwidth=2
au! BufRead,BufNewFile *.json setfiletype json

fun! StripTrailingWhitespace()
    " Don't strip on these filetypes
    if &ft =~ 'markdown'
        return
    endif
    %s/\s\+$//e
endfun

autocmd BufWritePre * call StripTrailingWhitespace()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" plugin settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" open/close NERDTree
map <leader>o :NERDTreeToggle<CR>

" fuzzy_filder
map <D-i> :FufCoverageFile<CR>

""""" extend copypath start
function CopyCurrentFilePath()
    let @*=expand('%:p:h')
    " copy unnamed register.
    if g:copypath_copy_to_unnamed_register
        let @"=expand('%:p:h')
    endif
endfunction

command! -nargs=0 CopyCurrentFilePath call CopyCurrentFilePath()
""""" extend copypath end
" copypath
map <silent><leader>c :CopyPath<CR>
map <silent><leader>f :CopyFileName<CR>
map <silent><leader>h :CopyCurrentFilePath<CR>

" let g:rubycomplete_buffer_loading = 1
" let g:rubycomplete_classes_in_global = 1
" let g:rubycomplete_rails = 1

" nmap <S-f> :CommandT<cr>
let g:fuf_previewHeight = 0

" theme setting
" let g:solarized_termcolors=256
let g:molokai_original = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 快捷键
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" tab
map J :tabnext<CR>
map F :tabpre<CR>
map <C-T> :tabnew<CR>

nmap <F2> :w<cr>
nmap <F3> :wa<cr>
nmap <F4> :q<cr>
nmap <F6> :cp<cr>
nmap <F7> :cn<cr>
nmap <F11> gg=G<C-o>

" alias
cmap cdrb cd ~/Codes/ruby<CR>
cmap cdkz cd ~/Codes/Rails/kinzin<CR>
cmap cdgg cd ~/Codes/Rails/gogotree<CR>

" vimrc
map <silent><leader>rc :tabnew ~/.vimrc<CR>
map <silent><leader>ss :source ~/.vimrc<CR>
map <silent><leader>grc :tabnew ~/.gvimrc<CR>
" source ~/.gvimrc
