#!/bin/bash

use_date=false
create_logs=false

while [ $# -gt 0 ]; do
    case "$1" in
        --date)
            use_date=true
            ;;
        --logs)
            create_logs=true
            ;;
        *)
            echo "Nieznana opcja: $1"
            exit 1
            ;;
    esac
    shift
done

#~~~
if [ "$use_date" = true ]; then
    echo "Dzisiejsza data to: $(date +%d.%m.%Y)"
fi

#~~~
if [ "$create_logs" = true ]; then
    for i in {1..100}; do
        touch "log$i.txt"
        echo "Utworzono plik log$i.txt"
    done
fi

#~~
if [ "$use_date" = false ] && [ "$create_logs" = false ]; then
    echo "Użycie: $0 --date --logs"
fi
