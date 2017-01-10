export PATH=~/bin:/usr/local/php5/bin:$PATH
export PATH=~/.composer/vendor/bin:$PATH
alias tinker='php artisan tinker'
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
#PS1='\[\e[0;31m\]\u\[\e[0m\]@\[\e[0;32m\]\h\[\e[0m\]:\[\e[0;34m\]\w\[\e[0m\]\$ '

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\[\e[0;31m\]\u@\[\e[0m\]@\[\e[0;32m\]\h\[\e[0m\]:\[\e[0;34m\]\\W\[\033[32m\]\\[\e[0m\]\$(parse_git_branch)\[\033[00m\] $ "
