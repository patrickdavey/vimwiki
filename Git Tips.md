`git submodule update --init --recursive`

[Git Commit Hooks for auto deploying](http://toroid.org/ams/git-website-howto)


If you happen to want to run vim in a git commit hook, like I do for this wiki

```bash
  #!/bin/bash
  vim - "+VimwikiIndex" "+VimwikiAll2HTML" "+quit"
  ~/vimwiki/site_html/sync.sh
```


ignore a file locally which has been checked into git (useful for database.yml
for example)

```bash
  git update-index --skip-worktree FILENAME
```


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
