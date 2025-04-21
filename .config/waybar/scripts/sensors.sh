#!/usr/bin/bash

sensors | grep edge | awk '{print $2}' | sed 's/+//g'
