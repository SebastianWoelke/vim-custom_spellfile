#!/bin/bash

current_dir=$(pwd)
cd ~/.
mkdir -p .vim/spell
ln -sf $current_dir/wordlist_de.utf-8.add de.utf-8.add 

