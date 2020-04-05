#!/usr/bin/env bash

set +x
set -e

python setup.py sdist bdist_wheel
twine check dist/*
