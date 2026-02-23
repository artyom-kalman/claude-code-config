#!/bin/bash
# Play a random Warcraft greeting on Claude launch
SOUNDS=(
  "$HOME/Audio/sounds/wc3_yes_me_lord.mp3"
  "$HOME/Audio/sounds/wc3_opiat_rabota.mp3"
)
PICK=${SOUNDS[$((RANDOM % ${#SOUNDS[@]}))]}
paplay "$PICK" &
