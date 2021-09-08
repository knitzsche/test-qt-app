#!/bin/sh
exec $SNAP/bin/run-daemon wayland-launch ${SNAP}/qmlscene/qmlscene ${SNAP}/gif.qml "$@"

