# snap - Analytics on Slack with Elastic Search and Kibana

`docker-compose up -d`
check that kibana looks alright at `localhost:5601`
Put slack channel json dump into a subdirectory like channel name e.g "general"
Go into subdirectory create "processed" subdirectory
Run ../process.sh [SOME INDEX NAME TO CREATE]
Got into processed subdirectory run ../../upload.sh  
