elif [[ "$1" == "--error" || "$1" == "-e" ]]; then
    num_files=${2:-100}
    mkdir -p error
    for ((i=1; i<=num_files; i++)); do
        fname="error/error${i}.txt"
        echo -e "$fname\n$(basename "$0")\n$(date)" > "$fname"
    done



