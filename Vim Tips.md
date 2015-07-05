[Vim Tips Wiki](http://vim.wikia.com/wiki/Vim_Tips_Wiki)
http://sheerun.net/2014/03/21/how-to-boost-your-vim-productivity/
https://news.ycombinator.com/item?id=9645729 - read through this properly at some point

[SO on how to use quickfix for searching and replacing](http://stackoverflow.com/questions/5686206/search-replace-using-quickfix-list-in-vim)

Update all helptags `:Helptags`

Using Vim Surround add quotes around a word:
    `csw'`

Using Vim Surround remove quotes around a word:
    `dsw'`

To use auto correct - `z=`

Sometimes when copying and pasting in text from windows / docx or whatever you
get hex chars which aren't utf-8.  If you want to do a search and replace you
can

1. Find the hex code by putting your cursor on the charachter and pressing `ga`
2. Then use a search/replace string as normal but specifying hex.  E.G `:%s/\%xNN//g`

Tabular.vim
`Tab/:\zs` will line up css nicely on a block

[Excellent vim reference](http://www.danielmiessler.com/study/vim/)

http://www.viemu.com/a-why-vi-vim.html


    # search and replace from within Vim (possibly useful with vim-abolish)

    #first - grep all the files into the arglist
    :args `grep -lR string_to_find dirs_to_search`

    # perform your search and replace
    :argdo %s/string_to_find/replace_with_this/g

    # update the pages
    :argdo update

    # very handy
  

http://vimcolors.com/112/jellyx/dark
