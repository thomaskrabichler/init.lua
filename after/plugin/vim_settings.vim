nmap <expr> <silent> <C-h> <SID>select_current_word()
function! s:select_current_word()
  if !get(b:, 'coc_cursors_activated', 0)
    return "\<Plug>(coc-cursors-word)"
  endif
  return "*\<Plug>(coc-cursors-word):nohlsearch\<CR>"
endfunc



" nmap <silent> <C-h> :call SelectCurrentWordLSP()<CR>
" function! SelectCurrentWordLSP()
"   let word = expand('<cword>')   " Get the current word under cursor
"   let @/ = '\<\V' . word . '\>'  " Set the search pattern to the exact word
"   set hlsearch                   " Highlight the search results
" endfunction

set textwidth=80
" augroup autosave
"   autocmd!
"   autocmd InsertLeave,FocusLost * silent! write
"   autocmd TextChanged,TextChangedI * silent! write
" augroup END
"augroup autosave
"  autocmd!
"  autocmd InsertLeave,FocusLost * silent! write
"augroup END
