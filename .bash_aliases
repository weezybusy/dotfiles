# conventions
alias l='ls -F --color=auto --group-directories-first'
alias ll='ls -Fhl --color=auto --group-directories-first'
alias la='ls -Fhal --color=auto --group-directories-first'
alias grep='grep --color=auto'
alias valgrind='valgrind --tool=memcheck --leak-check=full --show-reachable=yes'
alias python='python3'
alias pip='pip3'
alias gdb='gdb -q'
alias sed='sed -r'
alias tmux='tmux -2'
alias up='cd ..'
alias df='df -h'
alias du='du -h'
alias h='history 10'
alias less='less -M'
# start dlna service with updated database
alias dlna='/usr/bin/minidlnad -R -f ~/.minidlna/minidlna.conf'
# youtube-dl
alias yt='~/.local/bin/youtube-dl -f 22'
# compile and execute
alias mk='make && echo " " && ./a.out && echo " "'
# shortcuts
alias sandbox='cd ~/Documents/sandbox'
alias 6002x='cd ~/Documents/6002x'
alias kr2='cd ~/Documents/kr2'
alias stuff='cd /media/weezy/stuff'
# backup working directory
alias backup='rsync -urv --delete  --exclude="/lost+found" /media/$USER/work/* /media/$USER/stuff/documents/work'
