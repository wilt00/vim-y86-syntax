# Vim y86 Assembly Syntax (.ys, .yo)

A plugin to add syntax highlighting and other language-specific settings for the y86 academic assembly language to Vim (and Neovim).

## Installation

This plugin can be installed using your vim plugin manager of choice. I use [Vim-Plug](https://github.com/junegunn/vim-plug). After installing Vim-Plug following the instructions at that link, add this to your .vimrc:

``` Vimscript
call plug#begin('~/.vim/plugged')
" Make sure you use single quotes

" ... Your other plugins go here ...

Plug 'wilt00/vim-y86-syntax'

" Initialize plugin system
call plug#end()
```

Reload your .vimrc by running `:source %` or by closing and reopening vim, and then run `:PlugInstall` to download and install the plugin.
