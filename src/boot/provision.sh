#!/bin/bash

# ------------------------------------------------------------------------------
# Vagrant box provisioning script.
#
# Commands that require elevated privileges are prefixed `sudo`, which means
# this script can be run without elevated privileges. In the Vagrantfile:
#
#   script.privileged = false
# ------------------------------------------------------------------------------

# Capture input arguments.
# $1 = Absolute path to the directory in the guest VM that is mounted
#      from an directory on the host machine.
synced_dir=$1

# Path to the `boot` directory which contains scripts that are used
# by this provisioning script.
boot_dir="${synced_dir}/boot"

# Load helper functions.
source "${boot_dir}/inc/functions.sh"

# Print start message.
source "${boot_dir}/inc/msg/start.sh"

# Update and install system utilities.
source "${boot_dir}/inc/sys/update.sh"
source "${boot_dir}/inc/sys/upgrade.sh"

# Required utilities.
source "${boot_dir}/inc/util/pandoc.sh"
source "${boot_dir}/inc/util/make.sh"
source "${boot_dir}/inc/util/pdf.sh"

# Finalise.
source "${boot_dir}/inc/bashrc.sh"
source "${boot_dir}/inc/teardown.sh"
source "${boot_dir}/inc/msg/hello.sh"
source "${boot_dir}/inc/msg/finish.sh"
