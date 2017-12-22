#!/bin/bash

USER=deon
declare -a COLORARRAY

readarray COLORARRAY < /home/$USER/.cache/wal/colors

for color in "${COLORARRAY[@]}"; do
  color=${color%$'\n'} 
  echo "$color"
done

file=/home/deon/.config/i3/config
color=${COLORARRAY[0]}
sed -i "s/set \$bg-color.*$/set \$bg-color  $(echo "$color")/" $file
sed -i "s/set \$inactive-text-color.*$/set \$inactive-text-color  $(echo "$color")/" $file
color=${COLORARRAY[1]}
sed -i "s/set \$inactive-bg-color.*$/set \$inactive-bg-color  $(echo "$color")/" $file
color=${COLORARRAY[2]}
sed -i "s/set \$focused-outline-color.*$/set \$focused-outline-color  $(echo "$color")/" $file
color=${COLORARRAY[15]}
sed -i "s/set \$text-color.*$/set \$text-color  $(echo "$color")/" $file
color=${COLORARRAY[12]}
sed -i "s/set \$urgent-bg-color.*$/set \$urgent-bg-color  $(echo "$color")/" $file

cp /usr/share/bumblebee-status/themes/solarized-powerline.json /tmp
file=/tmp/solarized-powerline.json
color=${COLORARRAY[0]}
color2=${COLORARRAY[1]}
color3=${COLORARRAY[15]}
color6=${COLORARRAY[14]}
color4=${COLORARRAY[4]}
color5=${COLORARRAY[10]}

sed -i "15s/\"fg\".*\",/\"fg\": \"$(echo "$color")\",/" $file
sed -i "15s/\"bg\".*\" }/\"bg\": \"$(echo "$color2")\" }/" $file
sed -i "16s/\"fg\".*\",/\"fg\": \"$(echo "$color6")\",/" $file
sed -i "16s/\"bg\".*\" }/\"bg\": \"$(echo "$color")\" }/" $file

sed -i "32s/\"fg\".*\",/\"fg\": \"$(echo "$color")\",/" $file
sed -i "33s/\"bg\".*\"/\"bg\": \"$(echo "$color4")\"/" $file

sed -i "26s/\"fg\".*\",/\"fg\": \"$(echo "$color3")\",/" $file
sed -i "27s/\"bg\".*\"/\"bg\": \"$(echo "$color5")\"/" $file

cat $file>/usr/share/bumblebee-status/themes/solarized-powerline.json

i3-msg restart
