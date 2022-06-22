#!/bin/sh

sink=$(pactl info | sed -En 's/Default Sink: (.*)/\1/p')
echo $sink

if [[ $sink == *"Cloud_Flight"* ]]; then
    pactl set-default-sink alsa_output.pci-0000_25_00.3.analog-stereo
else
    pactl set-default-sink alsa_output.usb-Kingston_HyperX_Cloud_Flight_S_000000000001-00.analog-stereo
fi

