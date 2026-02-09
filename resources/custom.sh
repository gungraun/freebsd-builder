#!/bin/sh

set -exu

# Add your additional provisioning here for custom VM images.

pkg install -y valgrind curl llvm18 just npm-node22
