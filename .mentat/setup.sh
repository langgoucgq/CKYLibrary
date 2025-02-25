#!/bin/bash

# Make gradlew executable
chmod +x gradlew

# Run gradle wrapper to ensure proper setup
./gradlew wrapper

# Run initial build to download dependencies
./gradlew build -x test -x lint
