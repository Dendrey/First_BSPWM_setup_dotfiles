для установки системы:
видео https://youtu.be/i9M94y8PIsU?si=MEzejuyfQ9Jd0YLr

для установки графической оболочки: https://youtu.be/PLBm0C5Gv58?si=l12DCK-1k00NRMLf

для старта графической оболочки:
```
startx
```


для правильной смены раскладки:
```
sudo nano /etc/X11/xorg.conf.d/00-keyboard.conf
```
В самом файле прописать раскладки и сочетание клавиш для смены
```
Section "InputClass"
    Identifier "system-keyboard"
    MatchIsKeyboard "on"
    Option "XkbLayout" "us,ru"
    Option "XkbOptions" "grp:alt_shift_toggle"
EndSection
```

Для решения проблемы с AmneziaVPN
```
sudo systemctl enable systemd-resolved.service && sudo systemctl start systemd-resolved.service
```
```
 sudo ln -sf ../run/systemd/resolve/stub-resolv.conf /etc/resolv.conf
```

Установка fish по умолчанию:
```
chsh -s /bin/fish
```

установка (окна входа в систему) ly:
```
git clone https://aur.archlinux.org/ly.git
cd ly
makepkg -si
sudo systemctl enable ly
sudo systemctl start ly
```
