#! /bin/bash
#sample ffmpeg-convy.sh flac mp3 /path/to/files /path/to/dest '-vf scale=-1:720 -c:v libx265'
#                       srcext destext files destination ffmpeg_opts
srcExt=$1
destExt=$2

srcDir=$3
destDir=$4

opts=$5

for filename in "$srcDir"/*.$srcExt; do

        basePath=${filename%.*}
        baseName=${basePath##*/}

        ffmpeg -hide_banner -i "$filename" $opts "$destDir"/"$baseName"."$destExt";
        mkvpropedit "$i" -e info -s title="${baseName}";
      


done

echo "Conversion from ${srcExt} to ${destExt} complete!"
#
#-map_metadata 0  -map 0:0  -map 0:2  -c:v copy -c:a copy
