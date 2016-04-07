##### colors #####
export PS1='\[\033[01;32m\]\u\[\033[00m\]:$(git branch --no-color 2> /dev/null | sed -e "/^[^*]/d" -e "s/* \(.*\)/(\1)/")\[\033[01;34m\]\w\[\033[00m\]\$ '


##### rails comands #####
alias ss='bundle exec rails s'
alias sc='bundle exec rails c'

alias rake='bundle exec rake'
alias rspec='bundle exec rspec'

alias ll='ls -la'


################################ Autocomplete ####################################
# Autocomplete with up-arrow
bind '"\e[A":history-search-backward'
bind '"\e[B":history-search-forward'
#see: http://aplawrence.com/Linux/bash_history.html
# don't put duplicate lines in the history. See bash(1) for more options
export HISTCONTROL=erasedups
# ... and don't clobber the history when closing multiple shells
shopt -s histappend
# ... and keep multi line commands together
shopt -s cmdhist
# History
export HISTCONTROL=ignoredups:erasedups  # no duplicate entries
export HISTSIZE=100000                   # big big history
export HISTFILESIZE=100000               # big big history
shopt -s histappend                      # append to history, don't overwrite it
