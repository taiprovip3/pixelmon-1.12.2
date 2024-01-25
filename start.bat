#!/bin/bash

# Set the path to your server folder
ServerPath="/home/azureuser/server/custom px 1.12.2"

# Change to the server directory
cd "$ServerPath"

# Start the Minecraft server
restartCount=1

while true; do
    echo "Starting server... Restart count is $restartCount"
    java -Xms6G -Xmx6G -jar forge-1.12.2-14.23.5.2860.jar nogui

    # Check if the server needs to be restarted
    echo "Server has crashed... Restart count is $restartCount."
    restartCount=$((restartCount+1))

    # Add a delay before restarting to avoid constant restarts in case of immediate crashes
    sleep 5
done