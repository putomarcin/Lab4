#!/bin/bash

elif [[ "$1" == "--logs" ]]; then
    num_files=${2:-100}
    for ((i=1; i<=num_files; i++)); do
        filename="log${i}.txt"
        echo -e "$filename\n$(basename "$0")\n$(date)" > "$filename"
    done
fi
