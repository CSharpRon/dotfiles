xmodmap -e "clear lock" #disable caps lock switch
xmodmap -e "keycode 9 = Caps_Lock NoSymbol Caps_Lock" #set caps_lock as escape
xmodmap -e "keycode 66 = Escape NoSymbol Escape" #set caps_lock as escape
