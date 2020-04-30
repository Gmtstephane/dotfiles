#!/usr/bin/python
import json

background_color=""
foreground_color=""

with open('/home/stef/.cache/wal/colors.json') as json_file:
    data = json.load(json_file)
    background_color=data['special']['background']
    foreground_color=data['colors']['color1']


config=f"""/*
Include the standard variables from Mailspring's base theme:
https://github.com/Foundry376/Mailspring/blob/master/app/static/base/ui-variables.less#L37:L40
*/
@import "base/ui-variables";

@gray-base: #ffffff;
@gray-darker: darken(@gray-base, 13.5%);
@gray-dark: darken(@gray-base, 20%);
@gray: darken(@gray-base, 33.5%);
@gray-light: darken(@gray-base, 46.7%);
@gray-lighter: darken(@gray-base, 92.5%);
@white: #0a0a0a;

@accent-primary: {foreground_color};
@accent-primary-dark: darken(@accent-primary, 10%);

@background-primary: {background_color};
@background-off-primary: {background_color};
@background-secondary: {background_color};
@background-tertiary: {background_color};

@border-color-primary: lighten(@background-primary, 10%);
@border-color-secondary: lighten(@background-secondary, 10%);
@border-color-tertiary: lighten(@background-tertiary, 10%);
@border-color-divider: @border-color-secondary;

@text-color: #eee;
@text-color-subtle: fadeout(@text-color, 20%);
@text-color-very-subtle: fadeout(@text-color, 40%);
@text-color-inverse: white;
@text-color-inverse-subtle: fadeout(@text-color-inverse, 20%);
@text-color-inverse-very-subtle: fadeout(@text-color-inverse, 50%);
@text-color-heading: #fff;

@text-color-link: @accent-primary;
@text-color-link-hover: @accent-primary-dark;
@text-color-link-active: @accent-primary-dark;

@btn-default-bg-color: lighten(@background-primary, 5%);
@dropdown-default-bg-color: {background_color};

@input-bg: lighten(@background-primary, 10%);;
@input-border: @border-color-divider;

@list-bg: {background_color};
@list-border: #383838;
@list-selected-color: @text-color-inverse;
@list-focused-color: @text-color;

@toolbar-background-color: {background_color};
@panel-background-color: {background_color};
"""

file1 = open("/home/stef/snap/mailspring/common/packages/Pywal/styles/ui-variables.less","w")
file1.write(config)
file1.close() 