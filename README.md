## Testing API endpoints (tests/api) 

[![Build Status](https://travis-ci.org/khanbhai89/QA_Challenge.svg?branch=main)](https://travis-ci.org/khanbhai89/QA_Challenge)

**Youtube Video**

Here is the link for youtube video for more details: 

[![Youtube Video](https://img.youtube.com/vi/dKOzrdhRuIs/0.jpg)](https://youtu.be/dKOzrdhRuIs)


**API test use cases**

Write an API test to validate the JSON schema and to make sure all the values are
present in the API (imageURL is optional). Expecting 2 outputs
1. Postman test
2. Using a framework that can be executed from a DevOps pipeline. JavaScript
is the preferred language.
URL: https://interviewtestapi.azurewebsites.net/api/candidate

## Prerequisite

You need to have docker installed on the machine. For unix based CI environment please refer to details found below. 
[How to Install Docker on Mac](https://docs.docker.com/v17.12/docker-for-mac/install/)


## Normal Run

If you want to run test without building docker and if you don't require HTML report you can simply run by following procedure.

**Running Tests**

To run execute `./run_test_normal.sh`

## Run with HTML Generations

**Installation**

Build Docker with **Bash Script**

```
./build_local_docker
```
**Running Tests**

To run execute `./run_test_html.sh`

Customize `run_test_*.sh` for your own need

```
docker run -v "$PWD":/etc/newman -t DOCKER_IMAGE_NAME \
    run COLLECTION_URL_OR_LOCAL_FILE_PATH \
    --delay-request DELAY_BETWEEN_THE REQUESTS    \
    --suppress-exit-code    \
    --reporters=TYPE_OF_FORMAT_FOR_RESULT_OUTPUT  \
    --reporter-htmlextra-export=FOLDER_FOR_HTML_REPORT   \
    --reporter-json-export=FILE_PATH_FOR_JSON_REPORT"
```