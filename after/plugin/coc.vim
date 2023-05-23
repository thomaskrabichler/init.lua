"nmap <expr> <silent> bd <SID>select_current_word()
"
"  if !get(b:, 'coc_cursors_activated', 0)
"    return "\<Plug>(coc-cursors-word)"
"  endif
"  return "*\<Plug>(coc-cursors-word):nohlsearch\<CR>"
"endfunc
"imap <C-l> <Plug>(coc-snippets-expand)


nmap <leader>fcb <Plug>(coc-bloc.new-bloc)
"let g:neovide_transparency = 0.6

" " Copy to clipboard
vnoremap  <leader>y  "+y
nnoremap  <leader>Y  "+yg_
nnoremap  <leader>y  "+y
nnoremap  <leader>yy  "+yy
nnoremap  <leader>b "+p

"nnoremap <silent><leader>1 <cmd>lua require("bufferline").go_to_buffer(1, true)<cr>
"nnoremap <silent><leader>2 <cmd>lua require("bufferline").go_to_buffer(2, true)<cr>
"nnoremap <silent><leader>3 <cmd>lua require("bufferline").go_to_buffer(3, true)<cr>
"nnoremap <silent><leader>4 <cmd>lua require("bufferline").go_to_buffer(4, true)<cr>
"nnoremap <silent><leader>5 <cmd>lua require("bufferline").go_to_buffer(5, true)<cr>
"nnoremap <silent><leader>6 <cmd>lua require("bufferline").go_to_buffer(6, true)<cr>
"nnoremap <silent><leader>7 <cmd>lua require("bufferline").go_to_buffer(7, true)<cr>
"nnoremap <silent><leader>8 <cmd>lua require("bufferline").go_to_buffer(8, true)<cr>
"nnoremap <silent><leader>9 <cmd>lua require("bufferline").go_to_buffer(9, true)<cr>
"
"  
"nnoremap <silent><TAB> :BufferLineCycleNext<CR>
"nnoremap <silent><S-TAB> :BufferLineCyclePrev<CR> 
nnoremap <leader>qq :bd<CR> 
