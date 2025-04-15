function show_date() {
    echo "Dzisiejsza data: $(date +"%Y-%m-%d")"
}

if [[ "$1" == "--date" ]]; then
    show_date
else
    echo
    echo
    echo
fi
