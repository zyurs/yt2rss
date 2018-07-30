#!/bin/bash

youtube_channel=$1;
rss_flux="Not available";
if grep -q channel <<< $youtube_channel;
then
  rss_flux="https://www.youtube.com/feeds/videos.xml?channel_id=`egrep -o 'channel/[0-9a-Z_-]+' <<< $youtube_channel | cut -d / -f 2`";
elif grep -q user <<< $youtube_channel;
then
  rss_flux=`curl -s $youtube_channel | egrep -o 'https://.+channel_id=[0-9a-Z_-]+'`;
fi;
echo $rss_flux;
