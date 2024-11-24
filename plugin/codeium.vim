" let g:codeium_disable_bindings = 1
"
imap <script><silent><nowait><expr> <C-e> codeium#Accept()
imap <C-f>   <Cmd>call codeium#CycleCompletions(1)<CR>
imap <C-b>   <Cmd>call codeium#CycleCompletions(-1)<CR>
imap <C-x>   <Cmd>call codeium#Clear()<CR>
imap <C-d>   <Cmd>call codeium#Complete()<CR>

" If true, codeium completions will never automatically trigger.
" let g:codeium_manual = v:true
