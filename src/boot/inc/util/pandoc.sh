#!/bin/bash

# ------------------------------------------------------------------------------
# Installs Pandoc.
#
# Although Pandoc is in the Ubuntu, Debian and other package repositories, it is
# often outdated. The latest binaries for amd64 systems are distributed here:
# https://github.com/jgm/pandoc/releases/latest
#
# @see https://pandoc.org/
# ------------------------------------------------------------------------------

startNewTask "Installing Pandoc"

source_path="https://github.com/jgm/pandoc/releases/download/2.9.1.1/pandoc-2.9.1.1-1-amd64.deb"
download_path="/tmp/pandoc.deb"

sudo wget "${source_path}" -O "${download_path}"
sudo dpkg -i "${download_path}"
