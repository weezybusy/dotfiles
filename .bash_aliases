# conventions
alias l='ls -I lost+found -F --color=auto --group-directories-first'
alias ll='ls -I lost+found -Fhl --color=auto --group-directories-first'
alias la='ls -I lost+found -Fhal --color=auto --group-directories-first'
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias valgrind='valgrind --tool=memcheck --leak-check=full --show-reachable=yes'
alias py='python3'
alias pip='pip3'
alias gdb='gdb -q'
alias sed='sed -r'
alias tmux='tmux -2'
alias df='df -h'
alias du='du -h'
alias less='less -M'
alias kl='sudo killall'
alias rad='pyradio -s ~/Music/stations.csv'
alias nano='nano --smooth --tabstospaces --nowrap --autoindent --tabsize=4'
alias upd8='pip install --upgrade --user youtube-dl pyradio pip && sudo apt update && sudo apt upgrade && sudo apt-get autoremove && sudo apt-get autoclean'
alias r='make -s && ./a.out'
alias yt='youtube-dl -o "%(autonumber)s. %(title)s.%(ext)s" -f22 --no-playlist'
alias ytp='youtube-dl -o "%(playlist_index)s. %(title)s.%(ext)s" -f22'
# shortcuts
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias stuff='cd /media/weezy/stuff'
alias work='cd /media/weezy/work'
alias sbox='cd ~/Documents/sandbox'
alias kr='cd ~/Documents/kr2'
# backup working directory
alias backup='rsync -urv --delete  --exclude="/lost+found" /media/$USER/work/* /media/$USER/stuff/documents/work'
# Stopwatch
alias timer='echo "Timer started. Stop with Ctrl-D." && date && time cat && date'
