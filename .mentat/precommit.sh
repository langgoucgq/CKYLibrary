#!/bin/bash

# Run lint checks
./gradlew lint

# Run unit tests (quick, no emulator needed)
./gradlew test

# Run basic verification
./gradlew check -x test -x lint
