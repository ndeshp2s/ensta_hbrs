#!/bin/sh -x

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
    DESTDIR_ARG="--root=$DESTDIR"
fi

cd "/home/brsu/catkin_ws/src/ensta_hbrs/semantic_knowledgebase"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
/usr/bin/env \
    PYTHONPATH="/home/brsu/catkin_ws/install/lib/python2.7/dist-packages:/home/brsu/catkin_ws/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/brsu/catkin_ws/build" \
    "/usr/bin/python" \
    "/home/brsu/catkin_ws/src/ensta_hbrs/semantic_knowledgebase/setup.py" \
    build --build-base "/home/brsu/catkin_ws/build/ensta_hbrs/semantic_knowledgebase" \
    install \
    $DESTDIR_ARG \
    --install-layout=deb --prefix="/home/brsu/catkin_ws/install" --install-scripts="/home/brsu/catkin_ws/install/bin"
