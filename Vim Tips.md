[Vim Tips Wiki](http://vim.wikia.com/wiki/Vim_Tips_Wiki)

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
