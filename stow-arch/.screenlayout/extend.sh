#!/usr/bin/env bash

INT=eDP-1
EXT=$1

xrandr --output $EXT --auto

int_w=$(xrandr | grep $INT | sed -ne 's/.* \([0-9]\+\)x.*/\1/p')
int_h=$(xrandr | grep $INT | sed -ne 's/.*[0-9]x\([0-9]\+\).*/\1/p')

original_ext_w=$(xrandr | grep $EXT | sed -ne 's/.* \([0-9]\+\)x.*/\1/p')
original_ext_h=$(xrandr | grep $EXT | sed -ne 's/.*[0-9]x\([0-9]\+\).*/\1/p')

[ -n "$2" ] && scale=$2 || scale=1.65
scaled_ext_w=`(bc <<< $original_ext_w*$scale) | sed 's/\..*//'`
scaled_ext_h=`(bc <<< $original_ext_h*$scale) | sed 's/\..*//'`

fb_w=$(echo $(( $int_w > $scaled_ext_w ? $int_w : $scaled_ext_w )) )
fb_h=$(echo $(( $int_h + $scaled_ext_h )) )

int_x_offset=$(echo $(( ($int_w-$scaled_ext_w)/2 )) | sed 's/-//')

xrandr --output $INT --auto --dpi 160 --pos ${int_x_offset}x${scaled_ext_h} --output $EXT --scale ${scale}x${scale} --auto --pos 0x0 --fb ${fb_w}x${fb_h}
