#!/bin/bash

while true; do
  echo "Wybierz dystrybucje jaka posiadasz"
  read -p "1. Debian, Ubuntu, Mintn\2. RedHat, Fedoran\ 3. Arch, Manjaro" choose_distro
  case $choose_distro in
    [yY] ) chsh -s /usr/bin/fish; echo "Powloka zostala zmieniona";
      break;;
    [nN] ) exit;;
    * ) echo "Wybierz Y lub N";;
esac
done

#instalacja powloki fish
  sudo apt install fish

sleep 2

#edycja pliku .bashrc 

  echo -e "#fish\nexec fish" >> ~/.bashrc

sleep 2

#ukrycie wiadomości powitalnej

  echo -e "\nset -U fish_greeting" >> ~/.config/fish/config.fish
  
#ustawienie fish jako domyślny shell

while true; do
  read -p "Czy chcesz ustawic powloke fish jako domyslna? (y/n) " fish_as_default
  case $fish_as_default in
    [yY] ) chsh -s /usr/bin/fish; echo "Powloka zostala zmieniona";
      break;;
    [nN] ) exit;;
    * ) echo "Wybierz Y lub N";;
esac
done

sleep 2

  echo " Gotowe. Uruchom ponownie terminal"

exit 0
