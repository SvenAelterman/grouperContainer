#!/bin/bash

docker run --detach --mount type=bind,src=/opt/grouperContainer/logs/grouper-daemon-logs,dst=/opt/grouper/logs \
--mount type=bind,src=/opt/grouperContainer/slashRoot,dst=/opt/grouper/slashRoot \
--name grouper-daemon svaelter-grouper-2.5.33:latest daemon