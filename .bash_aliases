# external drives
alias stuff='cd /media/weezy/stuff'
alias work='cd /media/weezy/work'
alias movie='cd /media/weezy/movie/'

# git
alias gs='git status'
alias ga='git add'
alias gb='git branch'
alias gc='git commit'
alias gd='git diff'
alias go='git checkout'
alias gh="git log --pretty=format:\"%h %ad | %s%d [%an]\" --graph --date=short"

# music directories
alias salad='cd ~/Music/salad/'
alias jazz='cd ~/Music/jazz/'
alias mix='cd ~/Music/mix/'

# working directories
alias c='cd /media/weezy/work/c'
alias doit='cd /media/weezy/work/doit'

# valgrind extensions
alias valgrind='valgrind --tool=memcheck --leak-check=full --show-reachable=yes'

# python
alias python='python3.4'

# fix tmux colors
alias tmux='tmux -2'
# tmux shortcut
alias ta='tmux attach -t'

# gdb
alias gdb='gdb -quiet'
alias gdbt='gdbtui -q'

# system update and upgrade
alias update='sudo apt-get update'
alias upgrade='sudo apt-get update && sudo apt-get upgrade'

# apps
alias install='sudo apt-get install'
alias remove='sudo apt-get remove'
alias purge='sudo apt-get purge'
alias search='apt-cache search'
alias show='apt-cache show'
alias policy='apt-cache policy'
alias autoremove='sudo apt-get autoremove'
alias autoclean='sudo apt-get autoclean'

# backup work
alias bup='rsync -urv --delete /media/weezy/work/* /media/weezy/stuff/work'

# ls extensions
alias l='ls -F --color=auto --group-directories-first'
alias ls='ls --color=auto --group-directories-first'
alias ll='ls -lhF --color=auto --group-directories-first'
alias la='ls -aF --color=auto --group-directories-first'

# verbose output
alias rm='rm -v'
alias cp='cp -v'
alias mv='mv -v'
