# This bash file is to generate Readable HTML report for the users, 
# Please run ./build_local_docker.sh before runing this bash file

#/bin/bash

# stop on first error
set -e;

# UNCOMMENT BELOW TO RUN TEST LOCALL JSON COLLECTION

docker run -v "$PWD":/etc/newman -t newman-local \
    run "collection/QA_Challenge.postman_collection.json" \
    --environment  "environments/production.postman_environment.json"
    --delay-request 1000    \
    --suppress-exit-code    \
    --reporters="htmlextra,json,cli"  \
    --reporter-htmlextra-export="results/"   \
    --reporter-json-export="results/newman-results.json"

# docker run -v "$PWD":/etc/newman -t newman-local \
#     run "https://www.getpostman.com/collections/9aecedf925a00ef2fb18" \
#     --delay-request 1000    \
#     --suppress-exit-code    \
#     --reporters="cli,junit,json,htmlextra"  \
#     --reporter-htmlextra-export="results/"   \
#     --reporter-json-export="results/newman-results.json"
