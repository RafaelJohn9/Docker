# used to implement user and group settings in docker containers
FROM ubuntu:latest

# create a nonroot user
RUN useradd -m -s /bin/bash nonrootuser

# switch to the nonroot user
USER nonrootuser

# ... (rest of your docker file)
