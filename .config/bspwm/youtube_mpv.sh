#!/bin/sh

vidURL=$(zenity --entry --text "Please enter YouTube URL")

if [[ -z "${vidURL}" ]]; then
    echo "No URL specified"
else
    mpv $vidURL
fi
