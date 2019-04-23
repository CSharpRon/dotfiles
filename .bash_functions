# Allows me to do "up up and away"
function and () {
 up
}

# Refreshes the battery level in the terminal on a 1m loop
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

function print_current_battery_level() {
  cls;
  acpi | cowsay -f $(ls /usr/share/cowsay/cows | shuf -n1) | lolcat
}
