#!/bin/bash

mkdir -p downloads/

pushd downloads

wget --continue http://blzdistsc2-a.akamaihd.net/Linux/SC2.4.1.2.60604_2018_05_16.zip
wget --continue http://blzdistsc2-a.akamaihd.net/MapPacks/Ladder2017Season1.zip
wget --continue http://blzdistsc2-a.akamaihd.net/MapPacks/Ladder2017Season2.zip
wget --continue http://blzdistsc2-a.akamaihd.net/MapPacks/Ladder2017Season3_Updated.zip
wget --continue http://blzdistsc2-a.akamaihd.net/MapPacks/Ladder2017Season4.zip
wget --continue http://blzdistsc2-a.akamaihd.net/MapPacks/Ladder2018Season1.zip
wget --continue http://blzdistsc2-a.akamaihd.net/MapPacks/Ladder2018Season2_Updated.zip
wget --continue http://blzdistsc2-a.akamaihd.net/MapPacks/Melee.zip
wget --continue http://blzdistsc2-a.akamaihd.net/ReplayPacks/3.16.1-Pack_1-fix.zip
wget --continue http://blzdistsc2-a.akamaihd.net/ReplayPacks/3.16.1-Pack_2.zip
wget --continue https://github.com/deepmind/pysc2/releases/download/v1.2/mini_games.zip

if [ ! -d s2client-api ]; then
    git clone --recursive https://github.com/Blizzard/s2client-api.git
else
    pushd s2client-api
    git pull -r
    popd
fi


popd