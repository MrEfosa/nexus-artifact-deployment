#!/bin/bash

set -e

echo "=== Artifact Publishing Script Starting ==="

PROJECT_ROOT=$(pwd)

#######################################
# Publish Maven Artifact
#######################################

echo ""
echo "Building and publishing Maven project..."

cd "$PROJECT_ROOT"

mvn clean package
mvn deploy

echo "Maven artifact published successfully."

#######################################

echo ""
echo "=== All artifacts published successfully ==="

