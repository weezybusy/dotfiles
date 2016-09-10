# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
        *i*) ;;
        *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
        debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
        xterm-color) color_prompt=yes;;
esac

# colored prompt
force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
        if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
                color_prompt=yes
        else
                color_prompt=
        fi
fi

if [ "$color_prompt" = yes ]; then
        PS1='${debian_chroot:+($debian_chroot)}\[\033[00;33m\][\W]\[\033[00m\] '
else
        PS1='${debian_chroot:+($debian_chroot)}[\W] '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
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
        #alias ls='ls --color=auto'
        #alias grep='grep --color=auto'
fi

# colored GCC warnings and errors
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# play radio
indie() {
        indie="/home/$USER/Music/radio/indie.m3u"
        if ! (( $(pgrep -c "mocp") > 0 )); then
                mocp -S
        fi
        mocp -cap $indie
}

jazzy() {
        jazzy="/home/$USER/Music/radio/jazzy.m3u"
        if ! (( $(pgrep -c "mocp") > 0 )); then
                mocp -S
        fi
        mocp -cap $jazzy
}

# check weather
weather() {
        URL='http://www.accuweather.com/en/ua/kyiv/324505/weather-forecast/324505'
        RES=$(wget -q -O- "$URL" | awk -F\' '/acm_RecentLocationsCarousel\.push/{ print $10 "° " $14 }' | head -1)
        echo $RES
}

# convert spaces in file name to underscores
underscore() {
        find . -type f -name "* *.$1" -exec bash -c 'mv "$0" "${0// /_}"' {} \;
}

# timer
timer() {
        echo 'mplayer ~/Templates/sounds/Bomb-timer.mp3 &> /dev/null' | at now + $1 min
}

yt() {
        youtube-dl -q -o- $1 | mplayer -cache 8192 -
}

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
#setxkbmap "us,ru" ",winkeys" "grp:alt_caps_toggle"
setxkbmap -option caps:swapescape
