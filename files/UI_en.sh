## Text Formatting

TFS="\033["

RED=$(printf $TFS"0;31m")
GREEN=$(printf "\033[1;32m")
bold=$(tput bold)
normal=$(tput sgr0)

clear

## Directory of the script

dir()
{
    local SOURCE_PATH="${BASH_SOURCE[0]}"
    local SYMLINK_DIR
    local SCRIPT_DIR
    # Resolve symlinks recursively
    while [ -L "$SOURCE_PATH" ]; do
        # Get symlink directory
        SYMLINK_DIR="$( cd -P "$( dirname "$SOURCE_PATH" )" >/dev/null 2>&1 && pwd )"
        # Resolve symlink target (relative or absolute)
        SOURCE_PATH="$(readlink "$SOURCE_PATH")"
        # Check if candidate path is relative or absolute
        if [[ $SOURCE_PATH != /* ]]; then
            # Candidate path is relative, resolve to full path
            SOURCE_PATH=$SYMLINK_DIR/$SOURCE_PATH
        fi
    done
    # Get final script directory path from fully resolved source path
    SCRIPT_DIR="$(cd -P "$( dirname "$SOURCE_PATH" )" >/dev/null 2>&1 && pwd)"
    echo "$SCRIPT_DIR"
}

## Script itself



cat << EOF





                                                                     $GREEN╔══════════════════════════════════════════════════╗
                                                                     ║ ╔══════════════════════════════════════════════╗ ║
                                                                     ║ ║                                              ║ ║
                                                                     ║ ║             ${bold}   Void Linux Helper            ║ ║
                                                                     ║ ║                                              ║ ║
                                                                     ║ ║                                              ║ ║
                                                                     ║ ║            1) Install & Fix Pipewire         ║ ║
                                                                     ║ ║                                              ║ ║
                                                                     ║ ║            2) Install useful Utils           ║ ║
                                                                     ║ ║                                              ║ ║
                                                                     ║ ║            3) Install Drivers                ║ ║
                                                                     ║ ║                                              ║ ║
                                                                     ║ ║                                              ║ ║
                                                                     ║ ║                                              ║ ║
                                                                     ║ ║                                              ║ ║
                                                                     ║ ║                                              ║ ║
                                                                     ║ ║                                              ║ ║
                                                                     ║ ║                                              ║ ║
                                                                     ║ ║                                              ║ ║
                                                                     ║ ║                                              ║ ║
                                                                     ║ ║                                              ║ ║
                                                                     ║ ║                                              ║ ║
                                                                     ║ ║                                              ║ ║
                                                                     ║ ║                                              ║ ║
                                                                     ║ ║                                              ║ ║
                                                                     ║ ║                                              ║ ║
                                                                     ║ ║           $bold 0)$RED$bold Exit$GREEN                           ║ ║
                                                                     ║ ║                                              ║ ║
                                                                     ║ ║                                              ║ ║
                                                                     ║ ║                                              ║ ║
                                                                     ║ ║                                              ║ ║
                                                                     ║ ║                                              ║ ║
                                                                     ║ ╚══════════════════════════════════════════════╝ ║
                                                                     ╚══════════════════════════════════════════════════╝


EOF

read -p "                                                                                       Choose an option: " CHOICE

case "$CHOICE" in
"0") echo &&  echo "                                                                                      aborting..." && sleep 1 && exit 1 | clear;;
"1") sh -c "$(curl -fsSL https://raw.githubusercontent.com/praefrbx/praef-postinstall-void/refs/heads/main/pipewire.sh)";;
"2") sh -c "$(curl https://raw.githubusercontent.com/praefrbx/praef-postinstall-void/refs/heads/main/universal.sh)";;
"3") bash $(dir)/drivers_en.sh;;
*) echo "                                                                                    Invalid Option";;
esac
