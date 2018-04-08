#!/usr/bin/env bash
COMPOSE_CMD="docker-compose --project-directory ./  -f testing_tools/docker-compose.yaml"

$COMPOSE_CMD build
for test_environment in $($COMPOSE_CMD config --services)
do
    $COMPOSE_CMD run --rm $test_environment
done