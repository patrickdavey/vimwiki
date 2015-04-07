```bash
# Search and Replace in files
  find ./path -type f -exec sed -i 's/find_this/replace_this/g' {} \;

#in osx you need a blank extension? argument?
  find . -type f -exec sed -i "" 's/find_this/replace_this/g' {} \;
```

```bash
# using find and grep
  find . -name Gemfile | xargs grep blog
```

```bash
# Find and delete swap files
  find . -name *.swp -exec rm -rf {} \;
```

```bash
# Show two lines after the matching grep
  grep -R -A 2 matching *
```

```bash
# list files by increasing (human readable) sizes
  ls -lSrh
```

```bash
# remove all files except the file/directory called 'keep'
  rm -rf !(keep)
```

```bash
# spider a site to make a rudimentary sitemap
  wget --spider --force-html -r -l2 'http://localhost:3000' 2>&1 | grep '^--'
  | awk '{ print $3 }' | grep -v '\.\(css\|js\|png\|gif\|jpg\)$' | sort | uniq
  | grep -v '\(system\|stylesheets\|javascripts\)' > sorted_unique.txt
```


```bash
# list directories by size
du -sh ./*/
```


```bash
# create 100 small files
for i in {1..100}; do dd if=/dev/urandom bs=1 count=1 of=file$i; done 
```


[Intro to sed](http://www.grymoire.com/Unix/Sed.html#uh-0)
