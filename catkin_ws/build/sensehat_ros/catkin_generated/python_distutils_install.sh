#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/pebble/test/catkin_ws/src/sensehat_ros"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/pebble/test/catkin_ws/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/pebble/test/catkin_ws/install/lib/python2.7/dist-packages:/home/pebble/test/catkin_ws/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/pebble/test/catkin_ws/build" \
    "/usr/bin/python2" \
    "/home/pebble/test/catkin_ws/src/sensehat_ros/setup.py" \
    egg_info --egg-base /home/pebble/test/catkin_ws/build/sensehat_ros \
    build --build-base "/home/pebble/test/catkin_ws/build/sensehat_ros" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/pebble/test/catkin_ws/install" --install-scripts="/home/pebble/test/catkin_ws/install/bin"
