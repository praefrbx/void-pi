## Text Formatting
TFS="\033["

RED=$(printf $TFS"0;31m")
GREEN=$(printf "\033[1;32m")
bold=$(tput bold)
normal=$(tput sgr0)

## Script itself

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


clear

cat << EOF





                                                                     $GREEN╔══════════════════════════════════════════════════╗
                                                                     ║ ╔══════════════════════════════════════════════╗ ║
                                                                     ║ ║                                              ║ ║
                                                                     ║ ║             ${bold}   Void Linux Helper            ║ ║
                                                                     ║ ║                                              ║ ║
                                                                     ║ ║                                              ║ ║
                                                                     ║ ║            1) Install Nvidia Driver          ║ ║
                                                                     ║ ║                                              ║ ║
                                                                     ║ ║            2) AMD driver                     ║ ║
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

amd_installer()
{
    clear
    ## Installing AMD Linux firmware
    alias xi="sudo xbps-install"
    xi -y linux-firmware-amd
    ## Installing mesa vulkan and xorg drivers
    xi -y mesa-dri vulkan-loader mesa-vulkan-radeon xorg xf86-video-amdgpu xf86-video-ati
    read -p "                                                    Do you want to install Video acceleration Driver? Y/N " CHOICE2
    case "$CHOICE2" in
    "Y") xi mesa-vaapi mesa-vdpau;;
    "N") echo "Alright"
    esac
}

nvidia_installer()
{
    clear
    ## Choice of Nvidia Drivers
    echo "                                                                                You need to choose a Driver for your GPU"
    echo "                                            How to choose a driver: https://docs.voidlinux.org/config/graphical-session/graphics-drivers/nvidia.html"
    echo "                                                                              nvidia | nvidia470 | nvidia390 | nouveau"
    read -p "                                                                                              :" DRIVERCHOICE
    case "$DRIVERCHOICE" in
    "nvidia") xi nvidia;;
    "nvidia470") xi nvidia470 ;;
    "nvidia390") xi nvidia 390 ;;
    "nouveau") xi nouveau ;;
    *) echo "Wrong input, try again" &&  exit;;
    esac

    clear

    echo "                                                  You need to add nvidia-drm.modeset=1 nvidia-drm.fbdev=1 to GRUB_CMDLINE_LINUX_DEFAULT in /etc/default/grub"
    echo "                                                                      example in: https://github.com/korvahannu/arch-nvidia-drivers-installation-guide"
    echo '                                            **DO NOT FOLLOW THE GUIDE FULLY, ONLY STEP 3. DONT FOLLOW ANYTHING AFTER LINE "Add Early Loading of NVIDIA Modules:" **'
    sleep 3
}

read -p "                                                                                       Choose an option: " CHOICE
case "$CHOICE" in
"1") nvidia_installer;;
"2") amd_installer;;
esac
