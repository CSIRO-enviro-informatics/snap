#!/bin/bash
if [ "$1" != "" ]; then
   INDEX_NAME=$1
else
   INDEX_NAME="default_index"
fi
ls *.json | xargs -i echo "cat '{}' | jq --arg channel \${PWD##*/} -c '.[] | {"index" :{ \"_index\" : \"$INDEX_NAME\", \"_type\" : \"messages\", \"_id\": (\$channel + \"-\" + .ts + \"-\" + (.user // \"system\")) }}, .' > ./processed/{}-processed.json" | bash
