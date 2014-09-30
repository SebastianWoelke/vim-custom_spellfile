if exists("g:loaded_custom_spellfile")
    finish
endif
let g:loaded_custom_spellfile = 1

"short reminder form myself 
noremap zg zg:echo "Think of uploading the spellfile!"<CR>

"cleanup a spellfile (remove comments)
noremap zc :runtime spell/cleanadd.vim<CR>

"to sort a spellfile
noremap zs :%sort u<CR>

