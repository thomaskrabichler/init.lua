nmap <expr> <silent> <C-h> <SID>select_current_word()
function! s:select_current_word()
  if !get(b:, 'coc_cursors_activated', 0)
    return "\<Plug>(coc-cursors-word)"
  endif
  return "*\<Plug>(coc-cursors-word):nohlsearch\<CR>"
endfunc


set textwidth=80
augroup autosave
  autocmd!
  autocmd InsertLeave,FocusLost * silent! write
  autocmd TextChanged,TextChangedI * silent! write
augroup END
"augroup autosave
"  autocmd!
"  autocmd InsertLeave,FocusLost * silent! write
"augroup END
