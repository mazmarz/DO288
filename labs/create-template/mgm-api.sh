#!/bin/bash


oc new-app  --as-deployment-config --name quotesapi \
    -e DATABASE_PASSWORD=redhat \
    -e DATABASE_NAME=quotesdb \
    -e DATABASE_SERVICE_NAME=quotesdb \
    "php:7.2~https://github.com/mazmarz/DO288-apps-v1" \
    --context-dir quotes --dry-run -oyaml >> quotesapi.yml
