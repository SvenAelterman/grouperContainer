#!/bin/bash
 
docker run --detach --mount type=bind,src=/opt/grouperContainer/logs/grouper-ui-logs,dst=/opt/grouper/logs \
--mount type=bind,src=/opt/grouperContainer/slashRoot,dst=/opt/grouper/slashRoot -e RUN_SHIB_SP='false' \
-e SELF_SIGNED_CERT='true' --name grouper-ui --publish 443:443 svaelter-grouper-2.5.33:latest ui