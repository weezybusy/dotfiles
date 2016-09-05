# conventions
alias valgrind='valgrind --tool=memcheck --leak-check=full --show-reachable=yes'
alias tmux='tmux -2'
alias cc='cc -g -std=c99 -Wall'
alias wget='wget --content-disposition'
alias python='python3'
alias pip='pip3'
alias uscore='python3 ~/Templates/utils/underscore.py'

# utils
alias google='python3 ~/Templates/utils/google.py'
alias youtube='python3 ~/Templates/utils/youtube.py'
alias translate='python3 ~/Templates/utils/translate.py'
alias backup='rsync -urv --delete  --exclude="/lost+found" /media/weezy/work/* /media/weezy/stuff/work'
