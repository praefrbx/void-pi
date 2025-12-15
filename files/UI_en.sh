## Text Formatting

TFS="\033["

RED=$TFS"0;31m"
GREEN="\033[1;32m"
bold=$(tput bold)
normal=$(tput sgr0)

clear

echo -e
echo -e
echo -e
echo -e
echo -e $GREEN
echo -e "                                                                     ╔══════════════════════════════════════════════════╗"
echo -e "                                                                     ║ ╔══════════════════════════════════════════════╗ ║"
echo -e "                                                                     ║ ║                                              ║ ║"
echo -e "                                                                     ║ ║             ${bold}   Void Linux Helper            ║ ║"
echo -e "                                                                     ║ ║                                              ║ ║"
echo -e "                                                                     ║ ║                                              ║ ║"
echo -e "                                                                     ║ ║                                              ║ ║"
echo -e "                                                                     ║ ║            1) Install & Fix Pipewire         ║ ║"
echo -e "                                                                     ║ ║                                              ║ ║"
echo -e "                                                                     ║ ║            2) Install useful Utils           ║ ║"
echo -e "                                                                     ║ ║                                              ║ ║"
echo -e "                                                                     ║ ║                                              ║ ║"
echo -e "                                                                     ║ ║                                              ║ ║"
echo -e "                                                                     ║ ║                                              ║ ║"
echo -e "                                                                     ║ ║                                              ║ ║"
echo -e "                                                                     ║ ║                                              ║ ║"
echo -e "                                                                     ║ ║                                              ║ ║"
echo -e "                                                                     ║ ║                                              ║ ║"
echo -e "                                                                     ║ ║                                              ║ ║"
echo -e "                                                                     ║ ║                                              ║ ║"
echo -e "                                                                     ║ ║                                              ║ ║"
echo -e "                                                                     ║ ║                                              ║ ║"
echo -e "                                                                     ║ ║                                              ║ ║"
echo -e "                                                                     ║ ║                                              ║ ║"
echo -e "                                                                     ║ ║                                              ║ ║"
echo -e "                                                                     ║ ║                                              ║ ║"
echo -e "                                                                     ║ ║                                              ║ ║"
echo -e "                                                                     ║ ║            $bold 0)$RED$bold Exit$GREEN                          ║ ║"
echo -e "                                                                     ║ ║                                              ║ ║"
echo -e "                                                                     ║ ║                                              ║ ║"
echo -e "                                                                     ║ ║                                              ║ ║"
echo -e "                                                                     ║ ║                                              ║ ║"
echo -e "                                                                     ║ ║                                              ║ ║"
echo -e "                                                                     ║ ╚══════════════════════════════════════════════╝ ║"
echo -e "                                                                     ╚══════════════════════════════════════════════════╝"
echo -e
echo -e
read -p "                                                                                  Choose an option: " CHOICE

case "$CHOICE" in

"0") echo &&  echo "                                                                                      aborting..." && sleep 1 && exit 1 | clear;;
"1") sh -c "$(curl https://raw.githubusercontent.com/praefrbx/praef-postinstall-void/refs/heads/main/pipewire.sh)";;
"2") sh -c "$(curl https://raw.githubusercontent.com/praefrbx/praef-postinstall-void/refs/heads/main/universal.sh)";;
*) echo "                                                                                    Invalid Option";;
esac
