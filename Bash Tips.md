```bash
# Search and Replace in files
  find ./path -type f -exec sed -i 's/find_this/replace_this/g' {} \;

# with xargs instead
  find ./path -type f -print0 | xargs -0 sed -i s/replace_this/with_this/g

#in osx you need a blank extension? argument?
  find . -type f -exec sed -i "" 's/find_this/replace_this/g' {} \;
```

```bash
# grep and kill (example delayed_job processes)
kill $(ps aux | grep 'delayed_job' | awk '{print $2}')
```

```bash
#search and replace (unix) only matching the first occurance

sed -i   '0,/AUTO_INCREMENT=20252962/s/AUTO_INCREMENT=20252962/AUTO_INCREMENT=0/' /path/todump

         #'0,/WHATTOMATCH/s/WHATTOMATCH/REPLACEIT/'
```

```bash
# recusively set the modified time on files
find . -print0 | xargs -0 -- touch -a -m -t 200501181205.09
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
# telnet to somewhere and execute some remote commands
# handy for the odd backgammon server or two ;)

{ echo "username"; sleep 1; echo "password"; sleep 10; exit; } | telnet somesite.com port
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

```bash
# ssh port forward local 9000 to 1080 on remove (useful for mailcatcher e.g.)
ssh -L 9000:localhost:1025 ssh-alias
```

```bash
# rename files like 
# answer_1_b0YaiCkW.png
# thumb_1_sdfjksfj.png
rename -n 's/([\w]+)_([\d])(_[\w]+).png/$1_$2.png/' * 
```

[Intro to sed](http://www.grymoire.com/Unix/Sed.html#uh-0)

```bash
# find files greater than 50 megs
find  . -size +50M
```

```bash
# using exiftool (remove ImageDescription and CameraID from Olympus style images.. which add annoying metadata)
find . -iname "PC*.jpg" -print0 | xargs -0 exiftool -ImageDescription= -CameraID= -overwrite_original_in_place
```

```bash
# find all the txt files in subdirectories and move them into this one
find . -type f -name *.txt -print0 | xargs -0 -I {} mv {} .
`````

```bash
# useful for modifying podcasts so that they'll work nicely on an old ipod sorting wise
# first we move all the mp3.s into the current directory, then we get the modified time
# of the mp3, and set that as the title (title = title_filename)
find . -type f -name *.mp3  -print0 | xargs -0 -I {} mv {} .
ls -1tr | xargs -I {} stat -f '%m %N' {} | xargs -L1 bash -c 'id3tag -s$0_$1 $1'
```

```bash
# repeat an rsync command until it is complete
# from http://serverfault.com/a/98750/129747
while ! rsync -a .... ;do sleep 5;done
```
