# How to remap keys for the Magicforce 68 keyboard in linux
The steps below make *Home* and *End* the primary keys:

1. Install and run xev to find keycodes
```
xev
```

2. Swap the keys you want
```
xmodmap -e "keycode 112=Home"
xmodmap -e "keycode 117=End"
xmodmap -e "keycode 115=Next"
xmodmap -e "keycode 110=Prior"
```

To make the changes persistent:

3. Create a file Xmodmap in the home folder
```
xmodmap -pke > /.Xmodmap
```

4. Create a file .xinitrc in the hole folder
```
touch .xinitrc
nano .xinitrc
```

5. Enter this line inside the file and the save
```
xmodmap .Xmodmap
```

6. Reboot and you are done
