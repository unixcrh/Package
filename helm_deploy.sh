if [ -z "$1" ]; then
    echo "You must pass Helm installation type (install, upgrade, etc). Any additional params are appended to end of Helm command"
fi

./get_charts.sh
helm $1 "${@:2}" contoso-bikerental/