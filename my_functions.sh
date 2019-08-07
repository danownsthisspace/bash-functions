#!/bin/bash

#
# ─── HELPER FUNCTIONS ────────────────────────────────────────────────────────────────
#

function my_functions() {
  code ~/.my_functions.sh
}

function create_tab() {
  osascript &>/dev/null <<EOF
      tell application "iTerm"
        activate
        tell current window to set tb to create tab with default profile
        tell current session of current window to write text "$1"  
      end tell
EOF
}

function master_pull() {
  g checkout master
  git pull
}

function my_commit() {
  git add .
  git commit -am "$1"
  git push
}

function --() {
  g checkout -
}

function current_branch() {
  local CURRENT_BRANCH=$(git branch | grep \* | cut -d ' ' -f2)
  echo "Current Branch Is: " $CURRENT_BRANCH
}


function stop_port() {
  echo "Shutting down app at port " $1
  kill $(lsof -t -i :$1)    
}

#
# ─── OPEN COMMANDS ────────────────────────────────────────────────────────────────
#

function open_icloud() {
  open /Users/work/Library/Mobile\ Documents/com\~apple\~CloudDocs
}

function open_apps() {
  open /Applications
}

function open_docs() {
  open ~/Documents
}

function open_desktop() {
  open ~/Desktop
}