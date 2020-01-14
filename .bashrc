# Test

# permission
alias chmod='chmod --preserve-root'

# Git
alias gst='git status'
alias gdf='git diff'
alias gch='git checkout'

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
 docker-compose exec web rails $1
}
