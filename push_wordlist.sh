#!/bin/bash

var_git="git@github.com-aufgang001:aufgang001/vim-custom_spellfile.git"

var_https="https://git::@github.com/aufgang001/vim-custom_spellfile.git"

if [ $# = 0 ]; then
    ./push_wordlist.sh push
elif [ $# = 1 ]; then

    if [ $1 = "https" ]; then
        cd .git
        sed -i s!"$var_git"!"$var_https"!g config
    fi

    if [ $1 = "git" ]; then
        cd .git
        sed -i s!"$var_https"!"$var_git"!g config
    fi

    if [ $1 = "push" ]; then
        git pull
        ./push_wordlist.sh git
        git commit -a -m "Update wordlist."
        git push
        ./push_wordlist.sh https 
    fi

fi


