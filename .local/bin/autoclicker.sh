!/bin/bash
# File to track if the clicker is on
TOGGLE_FILE="/tmp/autoclicker_running"

if [ -f "$TOGGLE_FILE" ]; then
    rm "$TOGGLE_FILE"
    notify-send "Autoclicker" "Stopped" -t 1000
else
    touch "$TOGGLE_FILE"
    notify-send "Autoclicker" "Started" -t 1000
    while [ -f "$TOGGLE_FILE" ]; do
        # 0xC0 is the hex code for Left Click Down + Up
        ydotool click 0xC0
        sleep 0.001  # Adjust this for speed (0.1 = 10 clicks/sec)
    done
fi
