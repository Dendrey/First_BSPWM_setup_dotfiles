#!/bin/bash

# Получаем список всех рабочих столов
desktops=$(bspc query -D -m)

# Находим первый пустой рабочий стол
found=false
for desktop in $desktops; do
    # Проверяем, есть ли окна на данном рабочем столе
    if [ -z "$(bspc query -N -d "$desktop")" ]; then
        # Перемещаем активное окно на найденный пустой рабочий стол
        bspc node -d "$desktop"
        found=true
        exit 0
    fi
done

notify-send "No empty desktops available!"