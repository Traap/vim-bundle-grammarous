" {{{ bundle-grammorous.vim 
if exists('g:loaded_bundle_grammorous')
  finish
endif
let g:loaded_bundle_grammorous=1
" -------------------------------------------------------------------------- }}}
" {{{ Examples : https://github.com/rhysd/vim-grammarous 

" Check comments only execpt for markdown and vim ehlp. 
" let g:grammarous#default_comments_only_filetypes = {
"             \ '*' : 1, 'help' : 0, 'markdown' : 0,
"             \ }

" " Disable some rules.
" let g:grammarous#disabled_rules = {
"             \ '*' : ['WHITESPACE_RULE', 'EN_QUOTES'],
"             \ 'help' : ['WHITESPACE_RULE', 'EN_QUOTES', 'SENTENCE_WHITESPACE', 'UPPERCASE_SENTENCE_START'],
"             \ }

" " Enable passive rule check.
" let g:grammarous#enabled_categories = {'*' : ['PUNCTUATION']}

" " Dieable annoying rules.
" let g:grammarous#disabled_rules = {
"             \ '*' : ['WHITESPACE_RULE', 'EN_QUOTES'],
"             \ 'help' : ['WHITESPACE_RULE', 'EN_QUOTES', 'SENTENCE_WHITESPACE', 'UPPERCASE_SENTENCE_START'],
"             \ }

" Check spelling and grammar.
let g:grammarous#use_vim_spelllang=1

" Show errorsafter grammar check.
let g:grammarous#show_first_erro=1

" Use location list.
let g:grammarous#use_location_list=1

" Temporary keybinding experiments.
nmap <leader>gC <plug>(grammarous-close-info-window)
nmap <leader>ge <plug>(grammarous-move-to-next-error)
nmap <leader>ge <plug>(grammarous-move-to-previous-error)
nmap <leader>gf <plug>(grammarous-fixall)
nmap <leader>gf <plug>(grammarous-fixit)
nmap <leader>gg :GrammarousCheck<cr>
nmap <leader>gm <plug>(grammarous-move-to-info-window)
nmap <leader>gm <plug>(grammarous-open-info-window)
nmap <leader>gr <plug>(grammarous-remove-error)
nmap <leader>gr <plug>(grammarous-reset)
nmap <leader>gx <plug>(grammarous-disable-rule)
" -------------------------------------------------------------------------- }}}
