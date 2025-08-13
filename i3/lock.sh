#!/bin/bash

# Lock screen using i3lock-color with black background and keypress feedback

i3lock \
  --color=#000000 \
  --ring-color=#000000 \
  --keyhl-color=#eebd14 \
  --bshl-color=#000000 \
  --inside-color=00000000 \
  --line-color=00000000 \
  --separator-color=00000000 \
  --ringver-color=#000000 \
  --insidever-color=00000000 \
  --ringwrong-color=#eebd14 \
  --insidewrong-color=#00000000 \
  --time-color=#eebd14 \
  --date-color=#eebd14 \
  --layout-color=#eebd14 \
  --verif-color=#eebd14 \
  --wrong-color=#eebd14 \
  --greeter-color=#eebd14 \
  --radius=120 \
  --ring-width=10 \
  --time-str="%H:%M:%S" \
  --date-str="%A, %d %B %Y" \
  --verif-text="Checking..." \
  --wrong-text="Wrong!" \
  --noinput-text="" \
 # --greeter-text="Locked"

