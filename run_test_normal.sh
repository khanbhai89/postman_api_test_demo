#/bin/bash

# stop on first error
set -e;

# UNCOMMENT BELOW TO RUN TEST LOCALL JSON COLLECTION

docker run -v "$PWD":/etc/newman -t postman/newman:ubuntu \
    run "collection/QA_DEMO.postman_collection.json" \
    --environment  "environments/production.postman_environment.json" \
    --delay-request 1000    \
    --suppress-exit-code    \
    --reporters="json,cli"  \
    --reporter-json-export="results/newman-results.json"

# docker run -v "$PWD":/etc/newman -t postman/newman:ubuntu \
#     run "https://www.getpostman.com/collections/9aecedf925a00ef2fb18" \
#     --delay-request 1000    \
#     --suppress-exit-code    \
#     --reporters="json,cli"  \
#     --reporter-json-export="results/newman-results.json"
