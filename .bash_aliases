# conventions
alias ls='ls -F --color=auto'
alias grep='grep --color=auto'
alias valgrind='valgrind --tool=memcheck --leak-check=full --show-reachable=yes'
alias python='python3'
alias pip='pip3'
alias gdb='gdb -q'
alias sed='sed -r'
alias tmux='tmux -2'
# start dlna service with updated database
alias dlna='/usr/bin/minidlnad -R -f ~/.minidlna/minidlna.conf'
# youtube-dl
alias yt='~/.local/bin/youtube-dl -f 22'
# compile and execute
alias mk='make && echo " " && ./a.out && echo " "'
# shortcuts
alias sandbox='cd ~/Documents/sandbox'
alias stuff='cd /media/weezy/stuff'
# backup working directory
alias backup='rsync -urv --delete  --exclude="/lost+found" /media/$USER/work/* /media/$USER/stuff/work'
