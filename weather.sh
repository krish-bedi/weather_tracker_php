#!/bin/bash

if ! test -e "tagsoup-1.2.1.jar"; then
    wget https://repo1.maven.org/maven2/org/ccil/cowan/tagsoup/tagsoup/1.2.1/tagsoup-1.2.1.jar
fi

while true; do
    x=0
    current_time=$(date +"%Y-%m-%d-%H-%M-%S")
    while read url; do
        wget -O - "$url" > "$x"
        ((x++))
    done < sources.txt

    for i in {0..6}; do
        line=$(sed -n '224p' "$i")
        state=$(echo "$line" | grep -oP '(?<=, )(.*)(?="><span)')
        mv "$i" "$current_time-$state.html"
        java -jar tagsoup-1.2.1.jar --files "$current_time-$state.html"
        python3 parser.py "$current_time-$state.xhtml" "$current_time"
    done

    sleep 21600 #in seconds

done