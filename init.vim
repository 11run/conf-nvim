scriptencoding utf-8

let s:xdg_config_home = empty($XDG_CONFIG_HOME) ? expand('~/.config') : $XDG_CONFIG_HOME
let s:xdg_cache_home = empty($XDG_CACHE_HOME) ? expand('~/.cache') : $XDG_CACHE_HOME
let s:nvim_path = s:xdg_config_home . '/nvim'
let s:dein_path = s:xdg_cache_home . '/dein'

if !isdirectory(s:dein_path)
  exe "!mkdir -p" s:dein_path
  exe "!/bin/sh <(curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh)" s:dein_path
endif

if &compatible
  set nocompatible
endif

let s:dein_runtime = s:dein_path . '/repos/github.com/Shougo/dein.vim'
exe 'set runtimepath+=' . s:dein_runtime

call dein#begin(s:dein_path)

call dein#add(s:dein_runtime)

let s:dein_d=split(glob(s:nvim_path . '/dein.d/*.toml'))
for s:d_file in s:dein_d
let s:name=split(split(s:d_file, '/')[-1], '-')
if len(s:name) >= 3
  let s:wait=split(s:name[2], '\.')[0]
  call dein#load_toml(s:d_file, {'lazy': str2nr(s:wait)})
else
  call dein#load_toml(s:d_file)
endif
endfor

call dein#end()

filetype plugin indent on
syntax enable

if dein#check_install()
  call dein#install()
endif

let s:conf_d=split(glob(s:nvim_path . '/conf.d/*.vim'))
for s:d_file in s:conf_d
  exe 'source' s:d_file
endfor

