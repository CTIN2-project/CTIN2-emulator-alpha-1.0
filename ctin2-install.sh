#!/data/data/com.termux/files/usr/bin/bash

pkg update -y && pkg upgrade -y
pkg install -y git wget proot tar curl dialog x11-repo termux-x11

mkdir -p ~/ctin2/{bin,wine,config}
cd ~/ctin2/bin

wget -O box64 https://github.com/ptitSeb/box64/releases/latest/download/box64-aarch64
chmod +x box64

wget -O wine.tar.xz https://dl.winehq.org/wine-builds/android/wine-8.0.2.tar.xz
tar -xf wine.tar.xz -C ~/ctin2/wine

cat > ~/ctin2/ctin2 << 'EOF'
#!/data/data/com.termux/files/usr/bin/bash

while true; do
    OPTION=$(dialog --clear --stdout --title "CTIN2 Emulator" \
        --menu "Choose an option:" 15 50 6 \
        1 "Start Wine" \
        2 "Install Wine (Manual)" \
        3 "Manage Containers" \
        4 "Settings" \
        5 "About CTIN2" \
        6 "Exit")

    case $OPTION in
        1) ~/ctin2/wine/bin/wineboot ;;
        2) echo "Manual Wine installation not implemented." ;;
        3) echo "Container management coming soon." ;;
        4) echo "Settings coming soon." ;;
        5) dialog --msgbox "CTIN2 Emulator by CTIN2-project." 10 40 ;;
        6) clear; exit ;;
    esac
done
EOF

chmod +x ~/ctin2/ctin2

cat > ~/ctin2-launcher.sh << 'EOF'
#!/data/data/com.termux/files/usr/bin/bash
cd ~/ctin2
bash ctin2
EOF

chmod +x ~/ctin2-launcher.sh
ln -sf ~/ctin2-launcher.sh $PREFIX/bin/ctin2
clear
echo -e "[1;34m"
echo "╔════════════════════════════╗"
echo "║        ░▒▓█ CTIN2 █▓▒░     ║"
echo "║   Windows Emulator for     ║"
echo "║     Termux (Alpha 0.1)     ║"
echo "╚════════════════════════════╝"
echo -e "[0m"
sleep 1
