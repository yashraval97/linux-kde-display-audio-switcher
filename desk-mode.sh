#!/bin/bash

steam steam://close/bigpicture

kscreen-doctor output.HDMI-A-1.disable \
             output.DP-1.enable output.DP-1.mode.2560x1440@165 output.DP-1.position.0,270 output.DP-1.primary output.DP-1.scale.1 \
             output.DP-2.enable output.DP-2.mode.1920x1080@75 output.DP-2.position.2560,0 output.DP-2.rotation.right output.DP-2.scale.1

pactl set-default-sink alsa_output.pci-0000_0f_00.6.analog-stereo
