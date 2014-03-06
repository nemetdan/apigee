#!/bin/bash

source ../../config/setenv.sh

echo "Enter your password for user $username in the Apigee Enterprise organization $org, followed by [ENTER]:"

read -s password

echo Deploying test-bundle to $env on $url using $username and $org

../../tools/deploy.py -n test-bundle -u $username:$password -o $org -h $url -e $env -p ../test-bundle -d ../test-bundle

echo "If 'State: deployed', then your API Proxy is ready to be invoked."
echo "Run '$ sh invoke.sh'"
echo "If you get errors, make sure you have set the proper account settings in /setup/setenv.sh"
