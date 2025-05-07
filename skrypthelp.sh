if [[ "$1" == "--date" || "$1" == "-d" ]]; then
    date

elif [[ "$1" == "--logs" || "$1" == "-l" ]]; then
    num_files=${2:-100}
    for ((i=1; i<=num_files; i++)); do
        filename="log${i}.txt"
        echo -e "$filename\n$(basename "$0")\n$(date)" > "$filename"
    done

elif [[ "$1" == "--help" || "$1" == "-h" ]]; then
    echo "--date / -d        Wyświetla dzisiejszą datę"
    echo "--logs [N] / -l N  Tworzy N plików log (domyślnie 100)"
    echo "--error [N] / -e N Tworzy N plików error"
    echo "--help / -h        Pokazuje dostępne opcje"
    echo "--init             Klonuje repozytorium i ustawia PATH"

else
    echo "Nieznana opcja. Użyj --help lub -h."
fi
