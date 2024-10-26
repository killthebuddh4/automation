#!/bin/sh

dte=$(date +"%Y-%m-%d-%H-%M-%S")
log="$HOME/projects/killthebuddha.pub/logs/${dte}.md"

echo "# ${dte}" > "${log}"

nvim "${log}"