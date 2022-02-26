# Twitch Archiver
Hoard all VODs from your favourite Twitch Streamers

## Requirements
- docker
- docker-compose

## Basic Usage
1. Clone this repository
2. edit `.env` file
3. edit environment variables in `docker-compose.yml`
4. run with `docker-compose up -d`

## Basic Usage only Docker
```docker
docker run -d -e STR_APPID=<YOUR_TWITCH_APP_ID> -e STR_APPSECRET=<YOUR_TWITCH_APP_SECRET> -e STR_CHANNEL=<TWITCH_CHANNEL_NAME> -e STR_RES=best -v </PATH/TO/VODS>:/vods htobi02/twitch-archiver
```
<!--
## How its done
This script (`app.sh`) searches with your Twitch AppID and AppSecret all last Twitch VOD-URLs from your given Twitch Channel Name. <br>
Those URLs are piped to streamlink with the `--record` parameter. 
Basically nothing special :)
-->