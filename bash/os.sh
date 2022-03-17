#!/bin/sh

function is_wsl2() {
  local uname=$(uname -a)
  if [ "$(echo $UNAME | grep -q WSL2)" ]; then
    echo true
  else
    echo false
  fi
}

function is_mac() {
  local uname=$(uname -a)
  if [ "$(echo $UNAME | grep -q Darwin)" ]; then
    echo true
  else
    echo false
  fi
}
