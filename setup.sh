#!/bin/bash
BACKEND_DIR="ParaCAD-backend"
BACKEND_REPO="https://github.com/ParaCAD/ParaCAD-backend.git"

FRONTEND_DIR="ParaCAD-frontend"
FRONTEND_REPO="https://github.com/ParaCAD/ParaCAD-frontend.git"


set -e

if [ ! -d $BACKEND_DIR ]; then
    echo "$BACKEND_DIR does not exist, cloning"
    git clone $BACKEND_REPO
else
    echo "$BACKEND_DIR exists, pulling master"
    cd $BACKEND_DIR
    git checkout master
    git pull
    cd ..
fi

if [ ! -d $FRONTEND_DIR ]; then
    echo "$FRONTEND_DIR does not exist, cloning"
    git clone $FRONTEND_REPO
else
    echo "$FRONTEND_DIR exists, pulling master"
    cd $FRONTEND_DIR
    git checkout master
    git pull
    cd ..
fi
