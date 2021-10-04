#!/bin/sh

URL="https://www.reddit.com/message/unread/.json?feed=88a9a999ca0c8876ac61415ea16d7caa7c072c70&user=Agitated-Accident618"
USERAGENT="polybar-scripts/notification-reddit:v1.0 u/reddituser"Agitated-Accident618

notifications=$(curl -sf --user-agent "$USERAGENT" "$URL" | jq '.["data"]["children"] | length')

if [ -n "$notifications" ] && [ "$notifications" -gt 0 ]; then
    echo " $notifications"
else
    echo " "
fi
