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

# conventions
alias df='df -h'
alias cc='gcc -std=c99 -Wall'
alias valgrind='valgrind --tool=memcheck --leak-check=full --show-reachable=yes'
alias python='python3'
alias gdb='gdb -quiet'
alias gdbt='gdbtui -q'
alias wget='wget --content-disposition'
alias findusb="sudo grep SCSI /var/log/messages | tail -5 | cut -d' ' -f1,2,3,9 | sort -r | nl -s\". \" -nln -w1"

alias update='sudo apt-get update'
alias upgrade='sudo apt-get update && sudo apt-get upgrade'
alias install='sudo apt install'
alias remove='sudo apt-get remove'
alias purge='sudo apt-get purge'
alias search='apt-cache search'
alias show='apt-cache show'
alias policy='apt-cache policy'
alias autoremove='sudo apt-get autoremove'
alias autoclean='sudo apt-get autoclean'

alias l='ls -F --color=auto --group-directories-first'
alias ls='ls --color=auto --group-directories-first'
alias ll='ls -lhF --color=auto --group-directories-first'
alias la='ls -aF --color=auto --group-directories-first'

alias rm='rm -v'
alias cp='cp -v'
alias mv='mv -v'

# utils
alias google='python ~/Templates/utils/google.py'
alias webs='python ~/Templates/utils/webs.py'
alias backup='rsync -urv --delete /media/weezy/work/* /media/weezy/stuff/work'

# fix tmux colors
alias tmux='tmux -2'
