#!/bin/bash

youtube_channel=$1;
rss_flux=`curl -s $youtube_channel | egrep -o 'https://.+channel_id=[0-9a-zA-Z_]+'`;
echo $rss_flux;
