#!/bin/bash

# Ustawienie domyślnych wartości
use_date=false
create_logs=false

# Obsługa flag
while [ $# -gt 0 ]; do
    case "$1" in
        --date)
            use_date=true
            ;;
        --logs)
            create_logs=true
            ;;
        --help)
            echo "Użycie: $0 [OPCJA]"
            echo "Dostępne opcje:"
            echo "--date    Wyświetla dzisiejszą datę"
            echo "--logs    Tworzy 100 plików log.txt"
            exit 0
            ;;
        *)
            echo "Nieznana opcja: $1"
            exit 1
            ;;
    esac
    shift
done

# Wyświetlanie daty
if [ "$use_date" = true ]; then
    echo "Dzisiejsza data to: $(date +%Y-%m-%d)"
fi

# Tworzenie plików log.txt
if [ "$create_logs" = true ]; then
    for i in {1..100}; do
        touch "log$i.txt"
        echo "Utworzono plik log$i.txt"
    done
fi

# Komunikat, gdy nie podano żadnej flagi
if [ "$use_date" = false ] && [ "$create_logs" = false ]; then
    echo "Użycie: $0 [OPCJA]"
    echo "Dostępne opcje:"
    echo "--date    Wyświetla dzisiejszą datę"
    echo "--logs    Tworzy 100 plików log.txt"
fi
