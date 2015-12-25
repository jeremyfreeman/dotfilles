" Vundle setup
set nocompatible
filetype off
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" plugins
Plugin 'tpope/vim-fugitive'

Plugin 'SirVer/ultisnips.git'
"Plugin 'honza/vim-snippets.git'
Plugin 'nvie/vim-flake8'
Plugin 'bling/vim-airline'
Plugin 'nvie/vim-pyunit'

Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-notes'

"Plugin 'Valloric/YouCompleteMe'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
syntax enable
" Vundle setup complete

" http://mikegrouchy.com/blog/2012/05/compile-vim-with-python-support-on-osx-with-homebrew.html
set backspace=indent,eol,start

" terminal colors 
set t_Co=256

" vim-notes
:let g:notes_directories = ['~/notes',] 

" learn vimscript the hard way
" http://learnvimscriptthehardway.stevelosh.com/chapters/01.html
