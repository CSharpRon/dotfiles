# Refreshes the battery level in the terminal on specified time loop
# Random cowsay image every time
function refresh_battery_level() {
  print_current_battery_level
  local cur_battery_level=$(get_battery_level)
  while [ 1 -eq 1 ];
  do
    local new_battery_level=$(get_battery_level)

    if [ $new_battery_level -ne $cur_battery_level ];
    then
       print_current_battery_level
    fi

    cur_battery_level=$new_battery_level
    sleep 15 
  done
}

# Extracts just the numerical value from acpi
function get_battery_level() {
  local level=$(acpi | grep -o "[0-9]*"% | head -c -2)
  echo $level
}

# Allows me to do "up up and away"
function and() {
 up
}

# Prints battery level from acpi package
function print_current_battery_level() {
  cls;
  acpi | cowsay -f $(ls /usr/share/cowsay/cows | shuf -n1) | lolcat
}

# Goes through the apt remove log and reinstalls the last deleted packages
function undo_apt_removes() {
	echo '#!/bin/bash' > restore
	echo sudo apt-get install `grep Remove /var/log/apt/history.log | tail -1 | sed -e 's|Remove: ||g' -e 's|([^)]*)||g' -e 's|:[^ ]* ||g' -e 's|,||g'` >> restore
	chmod +x restore 
	./restore
}

# Searches the entire system for a particular file name
function find_file() {
 find / -name "*$1*"  2>&1 | grep -v "Permission denied"
}
