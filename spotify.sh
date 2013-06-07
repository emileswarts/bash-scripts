#!/bin/sh

# Get spotify window id, this works only if spotify is runnin and playing
# There seems to be two instances of Spotify "windows", the other probably
# being the systray icon
id=$(xdotool search --name "Spotify" |head -1)
[ $? -ne 0 ] && echo "Failed" && exit 1

# Track change request
if [ "$1" = "n" -o "$1" = "p" ]; then

  # So we want to change the track. First store current focused window
  cid=$(xdotool getwindowfocus)

  # Make sure spotify window is not minimized, otherwise focus will fail
  xdotool windowmap $id

  # Change focus to Spotify window
  xdotool windowfocus $id

  # Send needed key strokes for next/previous track
  [ "$1" = "n" ] && xdotool key Control_L+Right
  [ "$1" = "p" ] && xdotool key Control_L+Left

  # And nicely return the focus to the window where we were before
  xdotool windowfocus $cid

  # Wait for moment so that song title has time to change 
  sleep 1
fi

# Resolve the song from full window title, which is in format "Spotify - Artist - Track"
#title=$(xwininfo -id $id|grep xwininfo|cut -d\" -f2)
#title="${title#*- }"
# Pop up notification with song info
#notify-send -i /usr/share/pixmaps/spotify-linux-48x48.png -t 2000 "$title"

# Now playing to clipboard request
if [ "$1" = "np" ]; then 
  # Push the title to clipboard with xclip and also to standard out
  echo "np: $title"|xclip -in
  echo "np: $title"
fi
