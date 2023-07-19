

# **** EXEMPLE ******
# ./my_cut.sh https://www.youtube.com/watch?v=Se0-l7Ahatg BLAKE.mp3


# **** PARAMAS ******
# $1 LINK YOUTUBE
# $2 NAME FILE OUTPUT


# Download
youtube-dl --extract-audio --audio-format mp3 "$1" -o "$2"BLA 

mv "$2" /media/jonathan/DATA/Music

# Mv to fould
cd /media/jonathan/DATA/Music

# Casting
ffmpeg -i "$2"BLA  "$2"
# Split
mp3splt "$2" -t 01.00 -T 1 -g %[@o,@N=1,@y=2005] -o @f+_+@n