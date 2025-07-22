mkdir -p "$PREFIX/adb_scan"
file="$PREFIX/adb_scan/adb_scan_result.txt"
touch "$file"

for (( i=0; i<240; i++ )); do
    if (( i==10 )); then
        continue
    fi
    for (( j=0; j<256; j++ )); do
        if (( i==172 && j == 16 )); then
            j=31
            continue
        fi
        if (( i==192 && j==168 )); then
            continue
        fi
        for (( k=0; k<256; k++ )); do
            for (( l=0; l<256; l++ )); do
                ip="$i.$j.$k.$l"
                if [[ "$ip" == "127.0.0.1" ]]; then
                    continue
                fi
                echo "Testing $ip"
                timeout 15 adb connect "$ip" 2>/dev/null
                output=$(adb devices)
                adb disconnect >/dev/null
                last_line=$(echo "$output" | awk -F '\n' '{print $NF}')
                if [[ "$last_line" == *.* ]]; then
                    echo "$last_line" >> "$file"
                    echo "$last_line succeeded"
                fi
            done
        done
    done
done