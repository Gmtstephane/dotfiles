#!/bin/bash

. "/home/stef/.cache/wal/colors.sh"



printf "%s\n" "$color0"
PDIR="$HOME/.config/polybar"
CDIR="/home/stef/.config/Code - OSS/User"

LAUNCH="polybar-msg cmd restart"

custom_color="${color0:0:1}EE${color0:1}"

echo $custom_color
sed -i -e 's/bg = .*/bg = '$custom_color'/g' $PDIR/config.ini
sed -i -e 's/fg = .*/fg = #FFFFFF/g' $PDIR/config.ini
sed -i -e 's/fg-alt = .*/fg-alt = #A9ABB0/g' $PDIR/config.ini
sed -i -e 's/acolor = .*/acolor = '$color1'/g' $PDIR/config.ini
sed -i -e 's/HIGHLIGHT_BACKGROUND=.*/HIGHLIGHT_BACKGROUND="'$color1'"/g' $PDIR/scripts/menu
sed -i -e 's/HIGHLIGHT_BACKGROUND=.*/HIGHLIGHT_BACKGROUND="'$color1'"/g' $PDIR/scripts/menu_full
sed -i -e 's/HIGHLIGHT_BACKGROUND=.*/HIGHLIGHT_BACKGROUND="'$color1'"/g' $PDIR/scripts/sysmenu
sed -i -e 's/HIGHLIGHT_BACKGROUND=.*/HIGHLIGHT_BACKGROUND="'$color1'"/g' $PDIR/scripts/color-switch.sh
# Restarting polybar
$LAUNCH &

#sed -i -e 's/"activityBarBadge.background".*/"activityBarBadge.background": '$color1' ,/g' "$CDIR/settings.json"
#sed -i -e 's/"activityBar.activeBorder".*/"activityBar.activeBorder": '$color1' ,/g' "$CDIR/settings.json"
#sed -i -e 's/"list.activeSelectionForeground".*/"list.activeSelectionForeground": '$color1' ,/g' "$CDIR/settings.json"
#sed -i -e 's/"list.inactiveSelectionForeground".*/"list.inactiveSelectionForeground": '$color1' ,/g' "$CDIR/settings.json"
#sed -i -e 's/"list.highlightForeground".*/"list.highlightForeground": '$color1' ,/g' "$CDIR/settings.json"
#sed -i -e 's/"activityBarBadge.background".*/"activityBarBadge.background": '$color1' ,/g' "$CDIR/settings.json"
#sed -i -e 's/"activityBarBadge.background".*/"activityBarBadge.background": '$color1' ,/g' "$CDIR/settings.json"
#sed -i -e 's/"activityBarBadge.background".*/"activityBarBadge.background": '$color1' ,/g' "$CDIR/settings.json"
#sed -i -e 's/"activityBarBadge.background".*/"activityBarBadge.background": '$color1' ,/g' "$CDIR/settings.json"
#sed -i -e 's/"activityBarBadge.background".*/"activityBarBadge.background": '$color1' ,/g' "$CDIR/settings.json"

current_color=$(awk '/"activityBarBadge.background"/{print $2}' "$CDIR/settings.json")
#echo $current_color

#sed 's/'$current_color'/bar/g' "$CDIR/settings.json"

sed -i 's:'$current_color':'$color1':g' "$CDIR/settings.json"