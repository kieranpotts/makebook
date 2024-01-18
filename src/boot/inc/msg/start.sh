#!/bin/bash

# ------------------------------------------------------------------------------
# Announce the start of the provisioning script.
# ------------------------------------------------------------------------------

read -r -d '' msg << EOF
┌──────────────────────────────────────────────────────────────────────────────┐
│                                                                              │
│   PROVISIONING                                                               │
│                                                                              │
│   The guest machine is being provisioned.                                    │
│   Please wait. This will take some time.                                     │
│                                                                              │
└──────────────────────────────────────────────────────────────────────────────┘
EOF

echo "${msg}"
