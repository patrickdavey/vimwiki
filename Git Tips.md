`git submodule update --init --recursive`

[Git Commit Hooks for auto deploying](http://toroid.org/ams/git-website-howto)



```bash
  #!/bin/bash
  vim - "+VimwikiIndex" "+VimwikiAll2HTML" "+quit"
  ~/vimwiki/site_html/sync.sh
  
  # also, if you want to just send normal commands
  # the following would move you into the second wiki
  vim - "+normal 2\ww" "+VimwikiAll2HTML" "+quit"
```
If you happen to want to run vim in a git commit hook, like I do for this wiki


```bash
  git update-index --skip-worktree FILENAME
```
ignore a file locally which has been checked into git (useful for database.yml
for example)

```bash
  git ls-files -v | grep '^S'
```
Show the locally ignored (skipped) files (i.e. to find what you did above)


Copy untracked files into a different directory
```bash
  git ls-files --others --exclude-standard -z | cpio -pmd0 ../untracked-backup/
```

Zip up files which have changed between current branch and master
```bash
  git diff master --name-only | zip -@ changed.zip
```

List tags and their annotated messages
`git tag -l -n1`

Order branches by latest commit
`git for-each-ref --count=30 --sort=-committerdate refs/heads/ --format='%(refname:short)'`

Delete branches merged into current branch. Won't delete master or current
branch.
`git branch --merged | grep -v "\*\|master" | xargs -n 1 git branch -d`

[Excellent introduction to reset](http://git-scm.com/blog)

[Nice way to revert a whole lot of commits in one go](http://stackoverflow.com/questions/1895059/revert-to-a-commit-by-a-sha-hash-in-git)
```bash
# from the above stack overflow article

# reset the index back to the state you're interested in.
git reset <sha>

# reset the branch pointer back to previous HEAD .
git reset --soft HEAD@{1}

# commit your changes
git commit -m "my happy state"

# update working copy to reflect the current commit
git reset --hard
```


