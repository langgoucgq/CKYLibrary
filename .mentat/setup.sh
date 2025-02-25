#!/bin/bash

# Check for Java
if ! command -v java &> /dev/null; then
    echo "Error: Java is not installed or not in PATH"
    echo "Please install Java 8 or later and set JAVA_HOME environment variable"
    echo "For example:"
    echo "  1. Install Java Development Kit (JDK)"
    echo "  2. Set JAVA_HOME to point to your JDK installation"
    echo "  3. Add java to your PATH"
    exit 1
fi

# Make gradlew executable
chmod +x gradlew

# Only continue with Gradle commands if Java is available
if [ -n "$JAVA_HOME" ] || command -v java &> /dev/null; then
    # Run gradle wrapper to ensure proper setup
    ./gradlew wrapper

    # Run initial build to download dependencies
    ./gradlew build -x test -x lint
fi
