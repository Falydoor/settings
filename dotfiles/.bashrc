# Streamlink
function twitch() {
    streamlink twitch.tv/$1 $2
}

alias tw-moman="twitch momanus"
alias tw-ryu7z="twitch theryu7z"
alias tw-dota="twitch gaminglive_dota2"
alias tw-arma="twitch armatvhs"
alias tw-bruce="twitch brucegrannec"

# Utils
alias ydl="youtube-dl -x --restrict-filenames --audio-format mp3 -o '%(title)s.%(ext)s'"

# DEV
export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
PATH="$PATH:~/Library/Android/sdk/platform-tools:$HOME/.config/yarn/global/node_modules/.bin"

# Docker
function rmContainers() {
    docker container rm -f $(docker ps -aq)
}
