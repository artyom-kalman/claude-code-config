#!/bin/bash
# Play "Опять работа" when a plan file is created via Write tool
# PostToolUse hook receives JSON on stdin with tool input/result

INPUT=$(cat)
FILE_PATH=$(echo "$INPUT" | jq -r '.tool_input.file_path // ""' 2>/dev/null)

if echo "$FILE_PATH" | grep -q '/plans/'; then
  LOCK="/tmp/claude_plan_lock"
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
  paplay ~/Audio/sounds/wc3_opiat_rabota.mp3 &
fi
