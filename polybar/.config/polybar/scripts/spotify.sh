#!/usr/bin/env bash

artist=`playerctl -p spotify metadata xesam:artist`

if [ "$artist" != "" ]; then
  title=`playerctl -p spotify metadata xesam:title`

  status=`playerctl -p spotify status`

  pausedText="Paused — "
  if [ "$status" = "Playing" ]; then
    pausedText=""
  fi

  echo "$pausedText$artist : $title"
fi
