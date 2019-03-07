#!/bin/bash

# key repeats
echo "Change InitialKeyRepeat=10(150ms)? [y/n] \c"
read ANS
if [ $ANS = 'y' -o $ANS = 'yes' ]; then
  defaults write -g InitialKeyRepeat -int 10
  echo "Done."
fi
defaults read -g InitialKeyRepeat

echo "Change KeyRepeat=1.2(18ms)? [y/n] \c"
read ANS
if [ $ANS = 'y' -o $ANS = 'yes' ]; then
  defaults write -g KeyRepeat -float 1.2
  echo "Done."
fi
defaults read -g KeyRepeat
