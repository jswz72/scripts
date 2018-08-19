#!/usr/bin/env bash

INPUTSITE=$1 
SITEAARR=(${INPUTSITE//\// })
wget \
    --recursive \
    --no-clobber \
    --page-requisites \
    --html-extension \
    --convert-links \
    --no-parent \
    $1

