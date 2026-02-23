#!/bin/bash

SOUNDS_DIR="$HOME/Audio/sounds"

case "$CLAUDE_HOOK_EVENT" in
  "stop")
    paplay "$SOUNDS_DIR/wc3_work_complite.mp3" &
    ;;
  "notification")
    paplay "$SOUNDS_DIR/wc3_work_complite.mp3" &

    ;;
esac
