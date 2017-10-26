#!/bin/sh
#change title of current project to DEV + first arg
index=`find . -name 'index.html' | grep -v node_modules`
echo "Index file: ${index}"
titleline=`grep title ${index} `
echo "Changing ${titleline}... "
sed -i '' "s/.*<title>.*/<title>DEV ${1}<\/title>/" ${index}

