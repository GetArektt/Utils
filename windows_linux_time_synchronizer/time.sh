#!/bin/bash

# Pobieranie bieżącej godziny systemowej
current_time=$(timedatectl status | awk -F" " '{ print $5 }' | awk 'NR == 1')

# Porównywanie bieżącej godziny z oczekiwaną godziną 
expected_time=$(ntpdate -q info.cyf-kr.edu.pl | awk -F" " '{ print $3 }' | awk 'NR == 2')


if [ "$current_time" == "$expected_time" ]; then
  
  notify-send "Godzina jest aktualna: $current_time"
else
  
  notify-send "Godzina nie jest aktualna: $current_time"
 
  # Aktualizacja czasu systemowego
  timedatectl set-time $expected_time
  systemctl restart systemd-timesyncd.service
  
  notify-send "Godzina została zaktualizowana: $updated_time"

fi

