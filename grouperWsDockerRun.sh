#!/bin/bash
 
docker run --detach --mount type=bind,src=/opt/grouperContainer/logs/grouper-ws-logs,dst=/opt/grouper/logs \
--mount type=bind,src=/opt/grouperContainer/slashRoot,dst=/opt/grouper/slashRoot -e SELF_SIGNED_CERT='true' \
 --name grouper-ws --publish 8443:443 svaelter-grouper-2.5.33:latest ws