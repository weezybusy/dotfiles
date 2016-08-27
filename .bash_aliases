# conventions
alias valgrind='valgrind --tool=memcheck --leak-check=full --show-reachable=yes'
alias tmux='tmux -2'
alias cc='cc -std=c99 -Wall'

# utils
alias google='python3 ~/Templates/utils/google.py'
alias youtube='python3 ~/Templates/utils/youtube.py'
alias translate='python3 ~/Templates/utils/translate.py'
alias backup='rsync -urv --delete  --exclude="/lost+found" /media/weezy/work/* /media/weezy/stuff/work'
