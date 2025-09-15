#!/bin/bash

# Funkcja pytania Y/n
ask() {
    local prompt="$1"
    local answer

    while true; do
        read -rp "$prompt [Y/n]: " answer
        case "$answer" in
            [Yy]*|"") return 0 ;;   # Y albo Enter = tak
            [Nn]*) return 1 ;;      # N = nie
            *) echo "Wpisz Y lub N." ;;
        esac
    done
}


echo ' 
   _____  .__       .__           .__          __   .__       .__     
  /     \ |__| ____ |  |__ _____  |  |   _____|  | _|__| _____|  |__  
 /  \ /  \|  |/ ___\|  |  \\__  \ |  |  /  ___/  |/ /  |/  ___/  |  \ 
/    Y    \  \  \___|   Y  \/ __ \|  |__\___ \|    <|  |\___ \|   Y  \
\____|__  /__|\___  >___|  (____  /____/____  >__|_ \__/____  >___|  /
        \/        \/     \/     \/          \/     \/       \/     \/ 
                    --- Made in Michalskitoja ---
        '

# Instalacja GNOME
if ask "Czy chcesz zainstalowac GNOME?"; then
    echo "Instaluje GNOME..."
    sudo apt install gnome
else
    echo "Pominieto instalacje GNOME."
fi

# Instalacja FLATPAK
if ask "Czy chcesz zainstalowac flatpak?"; then
    echo "Instaluje Flatpak..."
    sudo apt install flatpak
else
    echo "Pominieto instalacje Flatpak."
fi

# Instalacja CHROMIUM
if ask "Czy chcesz zainstalowac Chromium?"; then
    echo "Instaluje Flatpak..."
    sudo apt install chromium
else
    echo "Pominieto instalacje cHROMIUM."
fi
