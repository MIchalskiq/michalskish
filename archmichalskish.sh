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
        # Instalacja yay
if ask "Czy chcesz zainstalowac yay?"; then
    echo "Instaluje yay..."
    sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si
else
    echo "Pominieto instalacje yay."
fi

# Instalacja GNOME
if ask "Czy chcesz zainstalowac GNOME?"; then
    echo "Instaluje GNOME..."
    pacman -S gnome
else
    echo "Pominieto instalacje GNOME."
fi

# Instalacja FLATPAK
if ask "Czy chcesz zainstalowac flatpak?"; then
    echo "Instaluje Flatpak..."
    pacman -S flatpak
else
    echo "Pominieto instalacje Flatpak."
fi

# Instalacja ZEN-BROWSER
if ask "Czy chcesz zainstalowac Zen Browser (Wymaga yay)?"; then
    echo "Instaluje Zen Browser..."
    pacman -S zen-browser
else
    echo "Pominieto instalacje Zen Browser."
fi

# Instalacja MOONLIGHT
if ask "Czy chcesz zainstalowac Moonlight (Wymaga yay)?"; then
    echo "Instaluje Moonlight..."
    pacman -S moonlight-qt
else
    echo "Pominieto instalacje Moonlight."
fi
