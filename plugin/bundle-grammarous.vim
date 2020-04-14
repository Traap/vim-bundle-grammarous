" {{{ bundle-grammorous.vim 
if exists('g:loaded_bundle_grammorous')
  finish
endif
let g:loaded_bundle_grammorous=1
" -------------------------------------------------------------------------- }}}
" {{{ Examples : https://github.com/rhysd/vim-grammarous 

" Check comments only execpt for markdown and vim ehlp. 
let g:grammarous#default_comments_only_filetypes = {
            \ '*' : 1, 'help' : 0, 'markdown' : 0,
            \ }

" Disable some rules.
let g:grammarous#disabled_rules = {
            \ '*' : ['WHITESPACE_RULE', 'EN_QUOTES'],
            \ 'help' : ['WHITESPACE_RULE', 'EN_QUOTES', 'SENTENCE_WHITESPACE', 'UPPERCASE_SENTENCE_START'],
            \ }

" Enable passive rule check.
let g:grammarous#enabled_categories = {'*' : ['PUNCTUATION']}

" Dieable annoying rules.
let g:grammarous#disabled_rules = {
            \ '*' : ['WHITESPACE_RULE', 'EN_QUOTES'],
            \ 'help' : ['WHITESPACE_RULE', 'EN_QUOTES', 'SENTENCE_WHITESPACE', 'UPPERCASE_SENTENCE_START'],
            \ }

" Check spelling and grammar.
let g:grammarous#use_vim_spelllang=1

" Show errorsafter grammar check.
let g:grammarous#show_first_erro=1

" Use location list.
let g:grammarous#use_location_list=1

" Temporary keybinding experiments.
nmap gcw <Plug>(grammarous-close-info-window)
nmap gde <Plug>(grammarous-disable-rule)
nmap gmg <Plug>(grammarous-move-to-info-window)
nmap gne <Plug>(grammarous-move-to-next-error)
nmap goa <Plug>(grammarous-fixall)
nmap gof <Plug>(grammarous-fixit)
nmap gog <Plug>(operator-grammarous)
nmap gor <Plug>(grammarous-reset)
nmap gow <Plug>(grammarous-open-info-window)
nmap gpg <Plug>(grammarous-move-to-previous-error)
nmap gre <Plug>(grammarous-remove-error)
" -------------------------------------------------------------------------- }}}
