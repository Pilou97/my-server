#!/bin/bash

name=`date +"%s"`.zip
zip -r $name /vw-data
rclone --config /root/rclone.conf copy $name mega:backup