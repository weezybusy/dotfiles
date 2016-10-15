# conventions
alias valgrind='valgrind --tool=memcheck --leak-check=full --show-reachable=yes'
alias wget='wget --content-disposition'
alias ls='ls -F --color=auto'
alias gdb='gdb -q'
alias python='python3'
alias pip='pip3'
alias dlna='/usr/bin/minidlnad -R -f ~/.minidlna/minidlna.conf'
alias pyradio='pyradio -s ~/Music/stations.csv'
alias youtube-dl='~/.local/bin/youtube-dl'

# utils
alias google='python3 ~/Templates/utils/google.py'
#alias youtube='python3 ~/Templates/utils/youtube.py'
alias translate='python3 ~/Templates/utils/translate.py'
alias backup='rsync -urv --delete  --exclude="/lost+found" /media/$USER/work/* /media/$USER/stuff/work'
alias uscore='python3 ~/Templates/utils/uscore.py'
