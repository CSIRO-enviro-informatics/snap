#!/bin/bash
ls | xargs -i curl -s -XPOST -H "Content-Type: application/json" localhost:9200/_bulk --data-binary @{}
