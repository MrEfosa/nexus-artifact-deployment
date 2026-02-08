#!/bin/bash

set -e

echo "=== Artifact Publishing Script Starting ==="

PROJECT_ROOT=$(pwd)

#######################################
# Publish Gradle Artifact
#######################################

echo ""
echo "Building and publishing Gradle project..."

cd "$PROJECT_ROOT"

gradle clean build
gradle publish

echo "Gradle artifact published successfully."
