#!/bin/bash
# Play "Zug zug" on first tool use, then throttle for COOLDOWN seconds
LOCK="/tmp/claude_zug_lock"
NOW=$(date +%s)
COOLDOWN=30

if [ -f "$LOCK" ]; then
  LAST=$(cat "$LOCK")
  DIFF=$((NOW - LAST))
  if [ "$DIFF" -lt "$COOLDOWN" ]; then
    exit 0
  fi
fi

echo "$NOW" > "$LOCK"
paplay --volume=32768 ~/Audio/sounds/wc3_zug_zug.mp3 &
