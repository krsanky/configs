#PATH=$HOME/bin:/bin:/sbin:/usr/bin:/usr/sbin:/usr/X11R6/bin:/usr/local/bin:/usr/local/sbin:/usr/games

PATH=$HOME/bin:$PATH
PATH=$HOME/go/bin:$PATH
export PATH

export PS1='${USER}@$(hostname -s):${PWD}\$ '

export ENV=$HOME/.kshrc

#export MANPATH=$MANPATH:/home/wise/chicken/share/man

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8

export ENV=$HOME/.kshrc

/usr/games/fortune -a

#set -o emacs
#set -o vi

