# conventions
alias valgrind='valgrind --tool=memcheck --leak-check=full --show-reachable=yes'
alias wget='wget --content-disposition'
alias ls='ls -F --color=auto'
alias gdb='gdb -q'
alias python='python3'
alias pip='pip3'
alias dlna='sudo service minidlna restart && minidlnad -R -f /home/$USER/.minidlna/minidlna.conf'
alias mpvstop='kill $(pgrep mpv)'

# utils
alias google='python3 ~/Templates/utils/google.py'
alias youtube='python3 ~/Templates/utils/youtube.py'
alias translate='python3 ~/Templates/utils/translate.py'
alias backup='rsync -urv --delete  --exclude="/lost+found" /media/$USER/work/* /media/$USER/stuff/work'
alias underscore='python3 ~/Templates/utils/underscore.py'
