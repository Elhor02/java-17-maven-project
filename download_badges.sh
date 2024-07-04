#!/bin/bash

SONAR_HOST_URL=$1
SONAR_PROJECT_KEY=$2
SONAR_TOKEN=$3

# Directory to store the downloaded badges
BADGES_DIR="badges"
mkdir -p $BADGES_DIR

# Download the quality gate status badge
curl -u $SONAR_TOKEN: "$SONAR_HOST_URL/api/project_badges/measure?project=$SONAR_PROJECT_KEY&metric=alert_status" -o "$BADGES_DIR/quality_gate_status.svg"

# Download the coverage badge
curl -u $SONAR_TOKEN: "$SONAR_HOST_URL/api/project_badges/measure?project=$SONAR_PROJECT_KEY&metric=coverage" -o "$BADGES_DIR/coverage.svg"
