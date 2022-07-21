#!/bin/bash

grep \"start\" package.json | grep "\-\-host 0.0.0.0" >> /dev/null

if [ $? -ne 0 ]; then
	echo 'You must add --host 0.0.0.0 to package.json file. ex) "start": "sirv public --no-cleari --host 0.0.0.0"'
	exit 1
fi

npm run dev
