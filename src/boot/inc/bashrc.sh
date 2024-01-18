#!/bin/bash

# ------------------------------------------------------------------------------
# On "vagrant ssh", immediately change directory to the synced directory.
# ------------------------------------------------------------------------------

#
if ! grep -q "cd ${synced_dir}" ~/.bashrc ; then
  echo "cd ${synced_dir}" >> ~/.bashrc
fi
