#!/usr/bin/env bash

set -e

function validate {
    terraform validate $1
}
function list_dirs {
    for path in $1; do
        [ -d "${path}" ] || continue
        echo "  $path"
        validate $path
    done
}

function log_validation_started {
    echo "Validating $1 config..."
}

function log_validation_complete {
    echo "[OK] $1 config"
}

log_validation_started "template"
validate template
log_validation_complete "template"

log_validation_started "modules-template"
list_dirs "modules-template/*/"
log_validation_complete "modules-template"

