#!/usr/bin/env sh

# If $DOWNLOAD_DIRECTORY is empty assign default value "./Downloads" to it
: "${DOWNLOAD_DIRECTORY:=./Downloads}"
: "${AUDIO_QUALITY:=0}"
: "${AUDIO_FORMAT:=mp3}"

cd $DOWNLOAD_DIRECTORY || return

youtube-dl $YOUTUBE_DL_OPT -i --extract-audio --audio-quality $AUDIO_QUALITY --audio-format $AUDIO_FORMAT --add-metadata --no-cache-dir --download-archive ./.downloaded $1 && rm -f *.m4a
