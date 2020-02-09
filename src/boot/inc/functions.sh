#!/bin/bash

# ------------------------------------------------------------------------------
# Helper functions, used throughout the provisioning script.
# ------------------------------------------------------------------------------

# Global task counter.
i=0

# ------------------------------------------------------------------------------
# Print a message to inform the user a new provisioning task is about to getting
# started.
#
# @global i - Task incrementer.
# @param  1 - Mesasage to print.
#
# @return void
#
function startNewTask {

  # Increment the global task counter.
  ((i++))

  # Print message.
  read -r -d '' msg << EOF
+------------------------------------------------------------------------------+
  STEP ${i}
  $1...
+------------------------------------------------------------------------------+
EOF
  echo "${msg}"

  # Give the user a moment to read the message.
  sleep 2s

}
