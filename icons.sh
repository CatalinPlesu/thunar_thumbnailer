#!/bin/sh
cp -r ./thunar_icons ~/.local/share/icons
line=$(grep -n 'actions' ~/.config/Thunar/uca.xml| tail -n1 | cut -f1 -d:)
((--line))
let line=line+1
TEXT=`cat ./uca.xml`
text=${TEXT//$'\n'/$'\\\n'}
text=${text%$'\\\n'}$'\n'

sed -i "$line i\\$text" ~/.config/Thunar/uca.xml 
# echo "%text" | xargs -I% sed -i "s/%//" ~/.config/Thunar/uca.xml
