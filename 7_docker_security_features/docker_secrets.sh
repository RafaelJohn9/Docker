#!/usr/bin/env bash
# shows how docker secrets works
echo "mysecretpassword" | docker secret create db_password -

docker service update --secret-add db_password your_service_name

# verifies that secret values are not exposed in the container environment
