#!/bin/bash

#Exit from the script immideatly  on failure of any command 
set -eou pipefail

#Exit from the script, if you have not passing any parameter 
if [ $# -eq 0 ]; then
    echo "Usage: ./execute.sh -t VIRTUOSO_TOKEN --goal_id ID_OF_GOAL_TO_EXECUTE [--staging] [--app2] [--max_retry_time MAX_RETRY_TIME] [--retry_delay_time RETRY_DELAY_TIME]"
    exit 1
fi

