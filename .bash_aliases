alias l='ls -I lost+found -hl --color=auto --group-directories-first'
alias ls='ls -I lost+found --color=auto --group-directories-first'
alias la='ls -I lost+found -ahl --color=auto --group-directories-first'
alias ld='ls -I lost+found -dhl --color=auto --group-directories-first'
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias h='history 10'
alias hc='history -c'
alias hh='history | grep'
alias valgrind='valgrind --tool=memcheck --leak-check=full --show-reachable=yes'
alias python='python3'
alias pip='pip3'
alias gdb='gdb -q'
alias sed='sed -r'
alias tmux='tmux -2'
alias df='df -h'
alias du='du -h'
alias free='free -hm'
alias less='less -M'
alias radio='pyradio -s ~/Music/stations.csv'
alias update='pip install --upgrade --user youtube-dl pyradio pip && sudo apt -y update && sudo apt -y upgrade && sudo apt-get autoremove && sudo apt-get autoclean'
alias die='sudo killall'
alias install='sudo apt install'
alias purge='sudo apt-get purge'
alias reboot='sudo reboot'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias documents='cd ~/Documents'
alias downloads='cd ~/Downloads'
alias music='cd ~/Music'
alias pictures='cd ~/Pictures'
alias templates='cd ~/Templates'
alias videos='cd ~/Videos'
alias stuff='cd /media/weezy/stuff'
alias work='cd /media/weezy/work'
alias sandbox='cd ~/Documents/sandbox'
alias c='cd ~/Documents/sandbox/c'
alias p='cd ~/Documents/sandbox/python'
alias backup='rsync -urv --delete  --exclude="/lost+found" /media/$USER/work/* /media/$USER/stuff/documents/work'
