[Vim Tips Wiki](http://vim.wikia.com/wiki/Vim_Tips_Wiki)
http://sheerun.net/2014/03/21/how-to-boost-your-vim-productivity/
https://news.ycombinator.com/item?id=9645729 - read through this properly at some point

[SO on how to use quickfix for searching and replacing](http://stackoverflow.com/questions/5686206/search-replace-using-quickfix-list-in-vim)

Update all helptags `:Helptags`

Sometimes when copying and pasting in text from windows / docx or whatever you
get hex chars which aren't utf-8.  If you want to do a search and replace you
can

1. Find the hex code by putting your cursor on the character and pressing `ga`
2. Then use a search/replace string as normal but specifying hex.  E.G `:%s/\%xNN//g`

`Tab/:\zs` will line up css nicely on a block

[Excellent vim reference](http://www.danielmiessler.com/study/vim/)

http://www.viemu.com/a-why-vi-vim.html


### search and replace from within Vim (possibly useful with vim-abolish)

```
:args `grep -lR string_to_find dirs_to_search`
:argdo %s/string_to_find/replace_with_this/g
:argdo update
```

http://dougblack.io/words/a-good-vimrc.html


String replace over newlines (useful for wordpress picture insertion)  
:%s/<\/a>\n\{-}<a href/<\/a><a href/g


### execute a vim script over files
Say you have a file with the word "change" in it, and you want to change
it to "wibble". And further say there are a few of these files in various
sub directories.

Create a bash script like this:

```bash
#!/bin/bash

for file in `find . -name *.txt`; do
	vim -e -s $file < wibble.vim
done;
```

and create the wibble.vim script above which contains the Ex commands
required:

```
%s/change/garble/ge
write
quit
```

Then you simply run the script, and the Ex commands will be run over
all of the files found in the find.

Now, it's easier to simply use the args command above, for this simple
search and replace, however, if you have more commands to do, this
might be a decent way to do it.

I had issues trying to do this using find & xargs, it's to do with
stdin which I really should open a StackOverflow about.

[Commands I'm trying to learn](commands_to_learn.md)


```
# for when your vim is going really really slowly and you reckon
# it might be to do with syntax.
# http://stackoverflow.com/a/20519492/435817
:syntime on
:syntime report
```

```
# switch to window named blah and run tests
nmap <leader>e :!tmux select-window -t blah <CR> :!tmux send-keys -t pa:blah "npm run test" C-m <CR> 
```
