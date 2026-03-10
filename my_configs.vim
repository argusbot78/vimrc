" Quick cheatsheet (server/console workflow)
"   ,w         save
"   ,g         Ack search (then ,cc opens quickfix)
"   ,n / ,p    next/prev quickfix hit
"   ,nn        toggle NERDTree
"   ,b         CtrlP buffer picker
"   ,d         toggle gitgutter
"   ,a         next ALE problem
"   F5         strip trailing whitespace
"   kj         exit insert mode
" Tip: set let g:amix_plugin_profile = 'full' in this file to load all plugins.

inoremap kj <Esc>

"Remove all trailing whitespace by pressing F5
"source: https://vi.stackexchange.com/questions/454/whats-the-simplest-way-to-strip-trailing-whitespace-from-all-lines-in-a-file
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

" 1 tab == 2 spaces
set shiftwidth=2
set tabstop=2
