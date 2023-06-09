#!/usr/bin/env bash

#wybor dystrybucji
while true; do
  clear;
  echo "Wybierz dystrybucje jaka posiadasz"
  read -p " 1. Instalacja na Debian, Ubuntu, Mint `echo $'\n '`2. Instalacja na RedHat, Fedora `echo $'\n '`3. Instalacja na Arch, Manjaro `echo $'\n '`4. Instalacja na OpenSuse `echo $'\n '`N/n: Nie chcę instalować Fish `echo $'\n '`Wybierz akcje: " choose_distro
  case $choose_distro in
    [1] ) sudo apt install fish;
      break;;
    [2] ) sudo dnf install fish;
      break;;
    [3] ) sudo pacman -S fish;
      break;;
    [4] ) sudo zypper in fish;
      break;;
    [nN] ) exit;;
    * ) echo "Wybierz 1, 2, 3, 4 lub N";;
esac
done

#ustawienie fish jako domyślny shell

sleep 2

while true; do
  read -p "Czy chcesz zmienic domyślną powloke bash na fish? (y/n) " fish_as_default
 case $fish_as_default in
   [yY] ) chsh -s /usr/bin/fish; echo "Powloka zostala zmieniona"; 
      break;;
    [nN] ) echo -e "#fish\nexec fish" >> ~/.bashrc; #edycja pliku .bashrc 
      break;;
    * ) echo "Wybierz Y lub N";;
esac
done

sleep 2

exec fish << EOF

sleep 2

#ukrycie wiadomości powitalnej fish

echo -e "\nset -U fish_greeting" >> ~/.config/fish/config.fish


sleep 2

echo " Gotowe. Uruchom ponownie terminal"

EOF

exit 0
