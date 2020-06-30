#!/bin/bash
#pause process
kill -STOP $(ps -A | grep chef-client | awk '{ print ($1);}')

# wait until postgres is avail
while read line; do
        if [[ ${line} = *FATAL:* ]]; then
                echo "${line}"
        else
                break
        fi
done < <(tail -f /var/log/gitlab/postgresql/current)

#continue process
kill -CONT $(ps -A | grep chef-client | awk '{ print ($1);}')
