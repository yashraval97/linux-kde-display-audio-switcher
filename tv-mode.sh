#!/bin/bash


kscreen-doctor output.DP-1.disable \
             output.DP-2.disable \
             output.HDMI-A-1.enable output.HDMI-A-1.mode.3840x2160@120 output.HDMI-A-1.position.0,0 output.HDMI-A-1.primary output.HDMI-A-1.scale.1.5


sleep 5
pactl set-default-sink alsa_output.pci-0000_03_00.1.hdmi-surround-extra2

steam steam://open/bigpicture
