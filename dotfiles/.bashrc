# Git
function pull-upstream() {
    git co ${1:-main} && git fetch upstream ${1:-main} && git rebase upstream/${1:-main}
}

# Streamlink
function twitch() {
    streamlink twitch.tv/$1
}
function tw() {
    streamlink twitch.tv/$(pbpaste)
}

# Docker
function rmContainers() {
    docker container rm -f $(docker ps -aq)
}

# k8s
function kexec() {
    k exec -it $1 -- $2
}
function kbash() {
    k exec -it $1 -- /bin/bash
}

# Utils
alias ydl="youtube-dl -x --restrict-filenames --audio-format mp3 -o '%(title)s.%(ext)s'"
alias gpg2="gpg"
alias k="kubectl"
alias perso="cd ~/Documents/perso"
alias work="cd ~/Documents/work"
alias python="python3"
alias snowsql="/Applications/SnowSQL.app/Contents/MacOS/snowsql"

# DEV
export AWS_PROFILE="sts"
PATH="$HOME/.npm-packages/bin:$HOME/.gem/ruby/2.6.0/bin:/usr/local/opt/ruby/bin:/usr/local/opt/node@18/bin:/usr/local/sbin:/Users/theo/.ebcli-virtual-env/executables:$PATH"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/theo/.sdkman"
[[ -s "/Users/theo/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/theo/.sdkman/bin/sdkman-init.sh"
