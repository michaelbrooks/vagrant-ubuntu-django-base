
function loggy {
    # Prints a message in green with lots of space around it.
    # If the 2nd parameter is error, message is red
    # http://misc.flogisoft.com/bash/tip_colors_and_formatting

    case "$2" in
        error)
            # Red text
            echo -e $'\e[1m\e[31m'
            ;;
        warn)
            # Red text
            echo -e $'\e[33m'
            ;;
        *)
            # Green text
            echo -e $'\e[32m'
            ;;
    esac

    echo -e $1
    echo -e $'\e[0m'
}
