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

# Utils
alias ydl="youtube-dl -x --restrict-filenames --audio-format mp3 -o '%(title)s.%(ext)s'"
alias gpg2="gpg"
alias pull-upstream="git fetch upstream master && git rebase upstream/master"

# DEV
export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
PATH="$HOME/.npm-packages/bin:/usr/local/opt/ruby/bin:/usr/local/opt/node@10/bin:$PATH"
