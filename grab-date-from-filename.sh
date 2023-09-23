for filename in %S; do
    timestamp=$(echo "$filename" | grep -E -o "[0-9]{14}|[0-9]{8}_[0-9]{6}|[0-9]{4}[-_][0-9]{2}[-_][0-9]{2}[-_][0-9]{2}[-_][0-9]{2}[-_][0-9]{2}|[0-9]{8}" | head -n 1)
    if [ -n "$timestamp" ]; then
        timestamp=$(echo "$timestamp" | tr -d '_-')
        if [ ${#timestamp} -eq 14 ]; then
            year="${timestamp:2:2}"
            month="${timestamp:4:2}"
            day="${timestamp:6:2}"
            hour="${timestamp:8:2}"
            minute="${timestamp:10:2}"
            second="${timestamp:12:2}"
        elif [ ${#timestamp} -eq 8 ]; then
            year="${timestamp:2:2}"
            month="${timestamp:4:2}"
            day="${timestamp:6:2}"

            time_in_metadata=$(stat -c %y "$filename")
            hour="${time_in_metadata:11:2}"
            minute="${time_in_metadata:14:2}"
            second="${time_in_metadata:17:2}"
        fi
        new_date="${year}${month}${day}${hour}${minute}.${second}"
        touch -t "$new_date" "$filename"
    else
        echo "$filename"
    fi
done
