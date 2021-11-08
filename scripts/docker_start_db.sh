#!/bin/bash
docker run -e 'ACCEPT_EULA=Y' \ # The EULA must be excepted in order for the container to spin up!
    -e 'SA_PASSWORD=yourStrong(!)Password' \ # setting up the password of the DB instance
    -p 1433:1433 \ # setting up the ports
    -d \ # run as detached
    --name source_db mcr.microsoft.com/mssql/server:2017-CU8-ubuntu # Image name as available on hub.docker.com