
"Golang shortcuts
nnoremap <leader>gr :GoRun<CR>
nnoremap <leader>gb :GoBuild<CR>
let g:closetag_filenames = '*.html,*.xhtml,*.phtml'
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'
let g:closetag_filetypes = 'html,xhtml,phtml'
let g:closetag_xhtml_filetypes = 'xhtml,jsx'
let g:closetag_emptyTags_caseSensitive = 1
let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ 'typescriptreact': 'jsxRegion,tsxRegion',
    \ 'javascriptreact': 'jsxRegion',
    \ }
let g:closetag_shortcut = '>'
let g:closetag_close_shortcut = '<leader>>'
autocmd FileType c    nnoremap <buffer><silent><leader>z :w<CR> :! gcc %; ./a.out<cr>
autocmd FileType python    nnoremap <buffer><silent><leader>z :w<CR> :! python3 %;<cr>
"Tabs
nnoremap <C-T> :tabe . <CR>
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
nnoremap <silent> <A-Left> :tabm -1<CR>
nnoremap <silent> <A-Right> :tabm +1<CR>

map <leader>ag :Ag <C-R><C-W><CR>

if has("autocmd")
    au BufWritePost *.py silent!   execute '!autopep8 --in-place --aggressive --aggressive  %:p' | e 
endif

"nnoremap <leader>pl :!python3 -m autopep8 --in-place --aggressive --aggressive "%:p"<CR>
"autocmd BufWritePost *.py !python3 -m autopep8 --in-place --aggressive --aggressive <afile>
autocmd FileType scss setl iskeyword+=@-@
"Material Theme

if (has('nvim'))
    let $NVIM_TUI_ENABLE_TRUE_COLOR = 1
endif
if (has('termguicolors'))
    set termguicolors
endif

let g:material_theme_style = 'darker'
"airline

let g:airline_theme='onedark'

"Nerd Tree

nmap <leader>d :NERDTreeToggle<CR>

" coc snippets
" Use <C-l> for trigger snippet expand.
imap <C-l> <Plug>(coc-snippets-expand)
"
" " Use <C-j> for select text for visual placeholder of snippet.
vmap <C-j> <Plug>(coc-snippets-select)
"
"" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-j>'

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-k>'
"
"" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)

inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
endfunction
let g:coc_snippet_next = '<tab>'

nmap <silent> gd <Plug>(coc-definition)
"Prettier
command! -nargs=0 Prettier :CocCommand prettier.formatFile

"termial
set splitright
set splitbelow
" turn terminal to normal mode with escape
tnoremap <Esc> <C-\><C-n>
" start terminal in insert mode
au BufEnter * if &buftype == 'terminal' | :startinsert | endif
" open terminal on ctrl+n
function! OpenTerminal()
  split term://zsh
  resize 12
endfunction
nnoremap <leader>a :call OpenTerminal()<CR>

"fzf
nnoremap <leader>h :GFiles<CR>
nnoremap <leader>j :Files<CR>
