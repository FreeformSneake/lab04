#!/bin/bash

use_date=false


while [ $# -gt 0 ]; do
    case "$1" in
        --date)
            use_date=true
            ;;
        *)
            echo "Nieznana opcja: $1"
            exit 1
            ;;
    esac
    shift
done


if [ "$use_date" = true ]; then
    echo "Dzisiejsza data to: $(date +%d.%m.%Y)"
else
    echo "Użycie: $0 --date"
fi
