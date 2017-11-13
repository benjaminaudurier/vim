set nocompatible

"initialisation de pathogen
"call pathogen#infect()
"call pathogen#helptags()

set number
set showcmd

"to change the mapleader '\' to 'c'
let mapleader=','
set timeout timeoutlen=1500

filetype on
filetype plugin on
filetype plugin indent on    " Nécessaire

" Ajout de Vundle au runtime path et initialisation
set rtp+=~/.vim/bundle/Vundle.vim


" C'est ici que vous allez placer la liste des plugins que Vundle doit gérer

call vundle#begin()
Plugin 'gmarik/Vundle.vim'  			" Nécessaire
Plugin 'itchyny/lightline.vim'			"don't remember
Plugin 'flazz/vim-colorschemes'			"colors
Plugin 'Valloric/YouCompleteMe'			"pretty self-explanatory
Plugin 'ctrlpvim/ctrlp.vim'			"to search doc
Plugin 'vim-airline/vim-airline'		"status bars
Plugin 'vim-airline/vim-airline-themes'		"status bars theme
Plugin 'scrooloose/nerdcommenter'		"commenter pluggin
Plugin 'scrooloose/nerdtree'			"File browser
Plugin 'terryma/vim-multiple-cursors'		"multicursors like sublime
Plugin 'vim-syntastic/syntastic'		"code wrapper
Plugin 'tpope/vim-fugitive'			"GIT wrapper
Plugin 'jiangmiao/auto-pairs'			"automatic braces
call vundle#end()            " Nécessaire

" configuration de syntastic
"set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0



syntax on

runtime! config/**/*.vim

" Configuration de la status bar
set laststatus=2
if !has('gui_running')
	set t_Co=256
endif
set noshowmode

" schéma de couleur
colorscheme molokai 


" In many terminal emulators the mouse works just fine, thus enable it.
"if has('mouse')
"  set mouse=a
"endif



