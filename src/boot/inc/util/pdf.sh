#!/bin/bash

# ------------------------------------------------------------------------------
# Installs other utilities that Pandoc requires to generate PDFs.
# ------------------------------------------------------------------------------

startNewTask "Installing PDF utilities"

sudo apt-get -y install texlive-fonts-recommended texlive-xetex
