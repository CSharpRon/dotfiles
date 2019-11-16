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

function up() {
  traversed=("$(pwd)" "${traversed[@]}")
  cd ../
}

function down() {
  cd "$(traversed[0])"
  traversed=("${traversed[@]:1}")
}

# Allows me to do up up and away
function and() {
 up
}

# Prints battery level from acpi package
function print_current_battery_level() {
  cls;
  # acpi | cowsay -f $(ls /usr/share/cowsay/cows | shuf -n1) | lolcat
  acpi | figlet 
}

function show_clock() {
  while :
  do
     cls;
     date +%x | figlet;
     date +%r | figlet;
     sleep 1;
  done 
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

function fix() {
    case $1 in 

        wi-fi)
            ;&
        wifi)
            sudo modprobe -r ath10k_pci && sudo modprobe ath10k_pci
            ;;
        *)
            ;;
    esac
}

function start() {
    case $1 in

        vpn)
            sudo systemctl start openvpn-client@US_Atlanta
            notify-send --icon=gtk-info "VPN Started Successfully" $(systemctl status openvpn-client* | awk 'NR == 1' | awk -F' ' '{print $7}')
            ;;
        *)
            ;;
    esac
}

function stop() {
    case $1 in

        vpn)
            sudo systemctl stop openvpn-client@US_Atlanta
            notify-send --icon=gtk-info "VPN Stopped"
            ;;
        *)
            ;;
    esac
}

function update-grub() {
    mkdir ~/.grub-backup >/dev/null 2>/dev/null;
    sudo cp /boot/grub/grub.cfg ~/.grub-backup;
    sudo grub-mkconfig -o /boot/grub/grub.cfg
}
