#!/bin/bash

function generate_logs() {
    for i in $(seq 1 100); do
        file_name="log${i}.txt"
        echo "Nazwa pliku: $file_name" > "$file_name"
        echo "Nazwa skryptu: $0" >> "$file_name"
        echo "Data utworzenia: $(date +"%Y-%m-%d %H:%M:%S")" >> "$file_name"
    done
    echo "Utworzono 100 plików logx.txt!"
}
if [[ "$1" == "--logs" ]]; then
    generate_logs
else
    echo "Użycie: $0 --logs"
    echo "Flaga:"
    echo "  --logs   Tworzy 100 plików logx.txt z odpowiednimi informacjami"
fi