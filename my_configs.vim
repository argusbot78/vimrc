inoremap kj <Esc>

"Remove all trailing whitespace by pressing F5
"source: https://vi.stackexchange.com/questions/454/whats-the-simplest-way-to-strip-trailing-whitespace-from-all-lines-in-a-file
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

" 1 tab == 2 spaces
set shiftwidth=2
set tabstop=2

" Personal workflow tuning (keep upstream core untouched)
" =======================================================

" ALE: prioritize languages used most in maintenance/dev workflow
let g:ale_linters = {
\   'bash': ['shellcheck'],
\   'sh': ['shellcheck'],
\   'c': ['clangd'],
\   'cpp': ['clangd'],
\   'python': ['flake8']
\}

" tmux-aware movement if vim-tmux-navigator is installed
if exists(':TmuxNavigateLeft')
  nnoremap <silent> <C-h> :TmuxNavigateLeft<CR>
  nnoremap <silent> <C-j> :TmuxNavigateDown<CR>
  nnoremap <silent> <C-k> :TmuxNavigateUp<CR>
  nnoremap <silent> <C-l> :TmuxNavigateRight<CR>
endif

" Note: to stay merge-friendly with upstream vimrc, keep custom behavior in
" this file instead of modifying vimrcs/* core files.

