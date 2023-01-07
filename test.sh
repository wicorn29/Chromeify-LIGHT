#!/bin/bash
echo bash <(curl -s https://raw.githubusercontent.com/wicorn29/Chromeify-LIGHT/main/test.sh)


function runCommand() { 
    load &                                             # calls the loading function
    local whilePID=$!                                  # gets the pid for the loop
    tar -czf ${zipFileToUpdate} ${directoryToBackUp} & # backs up files
    local backupPID=$!                                 # get's back up pid
    wait $backupPID                                    # waits for backup id
    kill $whilePID                                     # kills the while loop
    echo -ne "done"                                    # echos done and removes the spinner
}

function load() { # just a function to hold the spinner loop, here you can put whatever
    while true; do
        echo -ne "/\r"
        sleep .1
        echo -ne "-\r"
        sleep .1
        echo -ne "\ \r"
        sleep .1
        echo -ne "|\r"
        sleep .1
    done
}

runCommand
clear



load

