xset fp+ /usr/local/share/fonts/terminus-font

# [[ -f ~/.Xresources ]] && xrdb -merge $HOME/.Xresources
xrdb $HOME/.Xresources

xset -b
#xset b off
xset r rate 250 30
xsetroot -solid '#333'

# xinput --list --list-props <id> --set-prop ...
#xinput  --set-prop 7 265 2 
#xinput --set-prop  7  268 1

exec cwm

