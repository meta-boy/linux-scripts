
CURRENT_PROFILE=$(powerprofilesctl get)
case $CURRENT_PROFILE in
    "performance") powerprofilesctl set balanced
    ;;
    "balanced") powerprofilesctl set power-saver
    ;;
    "power-saver") powerprofilesctl set performance
    ;;
esac

PROFILE=$(echo -n $(powerprofilesctl get))
notify-send "Performance profile changed" "${PROFILE}"
    