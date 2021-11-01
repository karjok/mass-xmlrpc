#!/bin/bash
ERR='\033[1;33m'
NC='\033[0m'
timeout $1 php ixr.php $2 $3 $4
exit_status=$?
if [[ $exit_status -eq 124 ]]; then
    echo -e "[${ERR}Timeout${NC}] "$3 $2":"$4 2>/dev/null
fi