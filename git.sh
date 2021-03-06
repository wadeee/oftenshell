#!/bin/sh

## git command ##
dnf install -y git
git stash list
git stash -m 'message'
git stash pop
git stash pop stash@{1}
git checkout -b dev_branch
git checkout ds89fsu89
git checkout -f
git rebase -i HEAD~5
git rebase main
git reset HEAD^
git reset --hard HEAD~2
git push -f
git pull -f origin main:main

## git serve ##
git init --bare cellxiot.git
chown -R git:git cellxiot.git
adduser git
## vi /etc/passwd ## git:x:1001:1001:,,,:/home/git:/bin/bash => git:x:1001:1001:,,,:/home/git:/usr/bin/git-shell
## cat /etc/passwd | grep git
chsh git -s $(which git-shell)
## git clone git@server:/srv/cellxiot.git
## git clone ssh://git@office.cellx.com.cn:36010/srv/cellxiot.git
