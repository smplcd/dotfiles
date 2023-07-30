if [ -z $DISPLAY ] && [ $(tty) = /dev/ttyC0 ]; then
    startx
fi
