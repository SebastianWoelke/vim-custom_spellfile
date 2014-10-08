if exists("g:loaded_custom_spellfile")
    finish
endif
let g:loaded_custom_spellfile = 1

"short reminder form myself 
noremap zg zg:echo "Think of uploading the spellfile!"<CR>

"cleanup a spellfile (remove comments)
noremap zc :runtime spell/cleanadd.vim<CR>

"refresh wordlist (adding a word and remove it) 
noremap zr ozzzz<ESC>:w<CR>zgzugdd:w<CR>

"to sort a spellfile
noremap zs :%sort<CR>

