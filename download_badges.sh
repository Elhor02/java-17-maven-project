#!/bin/bash

SONAR_HOST_URL="https://4725-196-118-91-115.ngrok-free.app"
SONAR_PROJECT_KEY="Sonar-Maven"
SONAR_TOKEN="sq_7a99b8c35d0741f39562c75a48d2e87480f7b884"

# Directory to store the downloaded badges
BADGES_DIR="badges"
mkdir -p $BADGES_DIR

# Download the quality gate status badge
curl -u $SONAR_TOKEN: "$SONAR_HOST_URL/api/project_badges/measure?project=$SONAR_PROJECT_KEY&metric=alert_status" -o "$BADGES_DIR/quality_gate_status.svg"

# Download the coverage badge
curl -u $SONAR_TOKEN: "$SONAR_HOST_URL/api/project_badges/measure?project=$SONAR_PROJECT_KEY&metric=coverage" -o "$BADGES_DIR/coverage.svg"
