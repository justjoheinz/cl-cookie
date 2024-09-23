#!/usr/bin/env sh
LISP="qlot exec ros run "
echo "Starting LISP on port 4010"
echo "Connect via M-x sly-connect"

$LISP  \
    -e "(ql:quickload :slynk)" \
    -e "(slynk:create-server :port 4010)" \
    -e "(ql:quickload :{{cookiecutter.project_slug}})" \
    -e "(in-package :{{cookiecutter.project_slug}})"
