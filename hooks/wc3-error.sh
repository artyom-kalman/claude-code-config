#!/bin/bash
# Play "We're under attack!" when a tool call fails
# PostToolUse hook receives JSON on stdin with tool result

INPUT=$(cat)
# Check if the tool errored (non-zero exit for Bash, or error in result)
IS_ERROR=$(echo "$INPUT" | jq -r '.tool_result.is_error // false' 2>/dev/null)

if [ "$IS_ERROR" = "true" ]; then
  LOCK="/tmp/claude_attack_lock"
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
  paplay ~/Audio/sounds/wc3_were_under_attack.mp3 &
fi
