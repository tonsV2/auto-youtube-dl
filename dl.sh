#!/usr/bin/env sh

# If $DOWNLOAD_DIRECTORY is empty assign default value "./Downloads" to it
: "${DOWNLOAD_DIRECTORY:=./Downloads}"

# TODO: cd $DOWNLOAD_DIRECTORY ? And thereby avoid "mv *.mp3 $DOWNLOAD_DIRECTORY/"?

# TODO: Add environment variables for most of the below arguments
# TODO: Add generic environment variables YOUTUBE_DL_OPT
youtube-dl $YOUTUBE_DL_OPT -i --extract-audio --audio-quality 0 --audio-format mp3 --add-metadata --download-archive $DOWNLOAD_DIRECTORY/.downloaded $1 && rm -f *.m4a

mv *.mp3 $DOWNLOAD_DIRECTORY/
