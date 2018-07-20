# snap - Analytics on Slack with Elastic Search and Kibana

`docker-compose up -d`  
check that kibana looks alright at `localhost:5601`  
Put slack channel json dump into a subdirectory like channel name e.g "general"  
Go into subdirectory create `processed` subdirectory e.g you end up with something like "general/processed"  
From the first subdirectory e.g "general" Run `../process.sh [SOME INDEX NAME TO CREATE]`  
Got into processed subdirectory eg. "general/processed" Run `../../upload.sh`  
