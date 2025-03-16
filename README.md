для правильной смены раскладки:
sudo nano /etc/X11/xorg.conf.d/00-keyboard.conf

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
