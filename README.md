# What

This is a qml app snap. 

It uses mir-kiosk snap as a display server, using wayland EGL.

# Snapd interfaces

It uses qt as provided by test-qt-platform snap. 

Qt is accessed through several content interfaces consuming slots from test-qt-platform:

content[fonts]            test-qt-app:fonts            test-qt-platform:fonts            manual
content[fonts-usr-share]  test-qt-app:fonts-usr-share  test-qt-platform:fonts-usr-share  manual
content[glvnd]            test-qt-app:glvnd            test-qt-platform:glvnd            manual
content[qml]              test-qt-app:qml              test-qt-platform:qml              manual
content[qt-platform]      test-qt-app:qt-platform      test-qt-platform:qt-platform      manual

These must be manually connected after snap install.

In addition there are several interfaces that autoconect: 

mir-kiosk: wayland
network
opengl

# Daemon is disabled by default 

The qml app runs as a daemon (named "daemon") that is disabled on install (in order to allow
connecting required interfaces before execution — in production the snap would autoconnect all
interfaces via snap-declaration and the daemon would not be disabled).

