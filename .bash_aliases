# conventions
alias ls='ls -F --color=auto'
alias grep='grep --color=auto'
alias valgrind='valgrind --tool=memcheck --leak-check=full --show-reachable=yes'
alias python='python3'
alias pip='pip3'
alias gdb='gdb -q'
alias sed='sed -r'
alias tmux='tmux -2'
alias logout='lxsession-logout -b ~/Pictures/gtfo.jpg -s top'
# start dlna service with updated database
alias dlna='/usr/bin/minidlnad -R -f ~/.minidlna/minidlna.conf'
# load custom stations
alias pyradio='~/.local/bin/pyradio'
alias radio='~/.local/bin/pyradio -s ~/Music/stations.csv'
# save with file's original name
alias wget='wget --content-disposition'
# youtube-dl
alias yt='~/.local/bin/youtube-dl -f 22'
alias download_playlist='~/.local/bin/youtube-dl -o "%(playlist_index)s. %(title)s.%(ext)s" -f 22 --ignore-errors'
# compile and execute
alias mk='make && echo " " && ./a.out && echo " "'
# shortcuts
alias sandbox='cd ~/Documents/sandbox'
alias stuff='cd /media/weezy/stuff'
# search local databases
alias lwork='locate -d ~/.work.db'
alias lstuff='locate -d ~/.stuff.db'
# backup working directory
alias backup='rsync -urv --delete  --exclude="/lost+found" /media/$USER/work/* /media/$USER/stuff/work'
# update system
alias upd8='sudo apt-get autoremove && sudo apt update && sudo apt upgrade && sudo apt-get autoclean'
# remove application
alias del='sudo apt-get purge --auto-remove'
