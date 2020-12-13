#! /bin/bash
#
#                       
srcDir=$1


for i in "$srcDir"/*.mkv; do
        basePath=${i%.*}
        baseName=${basePath##*/}

        mkvpropedit "$i" -e info -s title="${baseName}"

done



echo "tagging complete!"