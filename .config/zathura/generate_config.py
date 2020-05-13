#!/usr/bin/python
import json

background_color="#272A34"
foreground_color="#EEEEEE"

#with open('/home/stef/.cache/wal/colors.json') as json_file:
#    data = json.load(json_file)
#    background_color=data['special']['background']
#    foreground_color=data['colors']['color1']


config=f"""# Dracula color theme for Zathura
# link:( https://github.com/dracula/dracula-theme#color-palette )
# Swaps Foreground for Background to get a light version
# Comment after the color is the color's name, as it appears in the palette
set font "inconsolata 15"

# Light/Default mode settings:
# 
#
set notification-error-bg       "#ff5555" # Red
set notification-error-fg       "#f8f8f2" # Foreground
set notification-warning-bg     "#ffb86c" # Orange
set notification-warning-fg     "#44475a" # Selection
set notification-bg             "{background_color}" # Background
set notification-fg             "#f8f8f2" # Foreground

set completion-bg               "{background_color}" # Background
set completion-fg               "#6272a4" # Comment
set completion-group-bg         "{background_color}" # Background
set completion-group-fg         "#6272a4" # Comment
set completion-highlight-bg     "{foreground_color}" # Selection
set completion-highlight-fg     "#f8f8f2" # Foreground

set index-bg                    "{background_color}" # Background
set index-fg                    "#f8f8f2" # Foreground
set index-active-bg             "{foreground_color}" # Current Line
set index-active-fg             "#f8f8f2" # Foreground

set inputbar-bg                 "#{background_color}" # Background
set inputbar-fg                 "#f8f8f2" # Foreground
set statusbar-bg                "#{background_color}" # Background
set statusbar-fg                "#f8f8f2" # Foreground

set highlight-color             "#ffb86c" # Orange
set highlight-active-color      "#ff79c6" # Pink

set default-bg                  "{background_color}" # Background
set default-fg                  "#f8f8f2" # Foreground

set render-loading              true
set render-loading-fg           "{background_color}" # Background
set render-loading-bg           "#f8f8f2" # Foreground

# Recolor mode settings
#
#
set recolor-lightcolor          "{background_color}" # Background
set recolor-darkcolor           "#f8f8f2" # Foreground

# Startup options
#
#
set adjust-open width
set recolor true

map <Left> navigate previous
map <Right> navigate next
map <C-=> zoom in
map <C--> zoom out
map B jumplist backward
background_color=""
map b jumplist forward"""

file1 = open("/home/stef/.config/zathura/zathurarc","w")
file1.write(config)
file1.close() 
