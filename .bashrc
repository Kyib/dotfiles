# bash
alias rcreload='source ~/.bashrc'
alias virc='vi ~/.bashrc'

# permission
alias chmod='chmod --preserve-root'

# Git
alias gst='git status'
alias gdf='git diff'

gad() {
 git add $@
}

gcm() {
 git commit -m $1
}

alias gcamend='git commit --amend'

gco() {
 git checkout $1
}

gcb() {
 git checkout -b $1
}

gstash() {
 git stash $1
}

# Docker Command
alias docup='docker-compose up -d'
alias docdn='docker-compose down'
alias docrc='docker-compose exec web rails c'

docbash() {
 docker exec -it $1 bash
}

docrails() {
 docker-compose exec web rails $@
}

docps() {
 docker-compose ps
}

# kyrat
alias sync_kyrat='cat ~/.bashrc ~/.sshbashrc > ~/.config/kyrat/bashrc'

# fileserver
# 社用：バックスラッシュで指定されたfilepathを開く
# 動かず断念。バックスラッシュの扱いが難しい
# openfs_bs() {
# echo $1 | sed -e 's,\\\\,\/,g' | xargs open
# }

# launch apps
alias textedit='open -a TextEdit'

# push .bashrc
pushrc() {
 cd ~/products/other/dotfiles/
 cp ~/.bashrc ~/products/other/dotfiles/.bashrc
 git add .bashrc
 git commit -m $1
 git push origin HEAD
}
