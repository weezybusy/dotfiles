# conventions
alias ls='ls -F --color=auto'
alias grep='grep --color=auto'
alias valgrind='valgrind --tool=memcheck --leak-check=full --show-reachable=yes'
alias python='python3'
alias pip='pip3'
alias gdb='gdb -q'
# start dlna service with updated database
alias dlna='/usr/bin/minidlnad -R -f ~/.minidlna/minidlna.conf'
# load custom stations
alias radio='pyradio -s ~/Music/stations.csv'
# save with file's original name
alias wget='wget --content-disposition'
# download playlist with numberings and 720p quality
alias download_playlist='~/.local/bin/youtube-dl -o "/media/$USER/stuff/vid/games/%(playlist_index)s. %(title)s.%(ext)s" -f 22 --ignore-errors'
# compile and execute
alias mk='make && echo " " && ./a.out'
# shortcuts
alias cpl='cd ~/Documents/playground/c'
alias ppl='cd ~/Documents/playground/python'
# search local databases
alias lwork='locate -d ~/.work.db'
alias lstuff='locate -d ~/.stuff.db'
# backup working directory
alias backup='rsync -urv --delete  --exclude="/lost+found" /media/$USER/work/* /media/$USER/stuff/work'
# substitute spaces with underscores in all files of current directory
alias uscore='python3 ~/Templates/utils/uscore.py'
# update system
alias upd8='sudo apt update && sudo apt upgrade && sudo apt-get autoclean'
# remove application
alias del='sudo apt-get purge --auto-remove'
