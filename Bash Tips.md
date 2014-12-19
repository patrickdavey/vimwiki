```bash
  find ./path -type f -exec sed -i 's/find_this/replace_this/g' {} \;

#in osx you need a blank extension? argument?
  find . -type f -exec sed -i "" 's/find_this/replace_this/g' {} \;
```
Search and Replace in files

```bash
  find . -name Gemfile | xargs grep blog
```
using find and grep

```bash
  find . -name *.swp -exec rm -rf {} \;
```
Find and delete swap files

```bash
  grep -R -A 2 matching *
```
Show two lines after the matching grep

```bash
  ls -lSrh
```
list files by increasing (human readable) sizes

```bash
  rm -rf !(keep)
```
remove all files except the file/directory called 'keep'

```bash
  wget --spider --force-html -r -l2 'http://localhost:3000' 2>&1 | grep '^--'
  | awk '{ print $3 }' | grep -v '\.\(css\|js\|png\|gif\|jpg\)$' | sort | uniq
  | grep -v '\(system\|stylesheets\|javascripts\)' > sorted_unique.txt
```
spider a site to make a rudimentary sitemap


```bash
# list directories by size
du -sh ./*/
```
