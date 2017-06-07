# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
    *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

HISTIGNORE="history:h:hh:l:ll:ls:"

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob;

# append to the history file, don't overwrite it
shopt -s histappend

# Autocorrect typos in path names when using `cd`
shopt -s cdspell;

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1024
HISTFILESIZE=2048

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
#[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

# Colored prompt
#force_color_prompt=no

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
        color_prompt=yes
    else
        color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[00;37m\]\W\[\033[00m\] '
    #PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u\[\033[00m\]@\[\033[01;35m\]\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\W '
    #PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

case "$TERM" in
    xterm*|rxvt*)
        PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
        ;;
    *)
        ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
fi

# colored GCC warnings and errors
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# cd to dir of defined file | Usage: cdf <file>
cdf() {
    cd "$(dirname "$(locate -i "$*" | head -n 1)")" ;
}

# automatically do an ls after each cd
cdl() {
    if [ -n "$1" ]; then
        builtin cd "$@" && ls -hl --group-directories-first --color=auto
    else
        builtin cd ~ && ls -hl --group-directories-first --color=auto
    fi
}

# mkdir & cd into it | Usage: mkcd
mcd() {
    if [ ! -n "$1" ]; then
        echo "Enter a name for this folder"
    elif [ -d $1 ]; then
        echo "\`$1' already exists"
    else
        mkdir $1 && cd $1
    fi
}

# wego weather function | usage wttr `city`
wr() {
    curl http://wttr.in/$1
}

# replaces spaces with underscores
uspace() {
    for i in *
        do
            [ ! "$i" == "$(echo $i | tr '\ ' '_')" && mv ./"$i" ./$(echo $i | tr '\ ' '_')]
        done
}

# extract function | Usage: extract <file>
extract() {
    if [ -f $1 ]; then
        case $1 in
            *.tar.bz2) tar xvjf $1   ;;
            *.tar.gz)  tar xvzf $1   ;;
            *.bz2)     bunzip2 $1    ;;
            *.rar)     rar x $1      ;;
            *.gz)      gunzip $1     ;;
            *.tar)     tar xvf $1    ;;
            *.tbz2)    tar xvjf $1   ;;
            *.tgz)     tar xvzf $1   ;;
            *.zip)     unzip $1      ;;
            *.Z)       uncompress $1 ;;
            *.7z)      7z x $1       ;;
            *)         echo "don't know how to extract '$1'..." ;;
        esac
    else
        echo "'$1' is not a valid file!"
    fi
}

# Download youtube playlist.
tube() {
    if (( $# != 3 )); then
        echo "Usage: tube [URL] [PATH] [PLAYLIST NAME]"
        return
    fi

    playlist_url=$1
    playlist_path=$2
    playlist_name=$3
    return_path=$PWD

    if [ $playlist_path == "games" ]; then
            playlist_path="/media/$USER/stuff/videos/games"
    elif [ $playlist_path == "study" ]; then
            playlist_path="/media/$USER/stuff/videos/study"
    fi

    if [ -d $playlist_path ]; then
        playlist="$(realpath $playlist_path/$playlist_name)"

        if [ -d $playlist ]; then
            echo "$playlist: Directory already exists"
            return
        fi

        echo "Creating $playlist"...
        mkdir $playlist
        cd $playlist

        until youtube-dl -f 22 -i -o \
                "%(playlist_index)s.  %(title)s.%(ext)s" $playlist_url; do
            sleep 5;
        done;

        cd $return_path
        notify-send "Playlist $playlist_name has been downloaded"
    else
        echo "$playlist_path: No such directory"
        return
    fi
}

unplug() {
    udisksctl unmount -b /dev/$1
    udisksctl power-off -b /dev/$1
}

# Alias definitions.
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
    if [ -f /usr/share/bash-completion/bash_completion ]; then
        . /usr/share/bash-completion/bash_completion
    elif [ -f /etc/bash_completion ]; then
        . /etc/bash_completion
    fi
fi
