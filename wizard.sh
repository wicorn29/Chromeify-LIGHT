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
 toilet -f bigascii12  LINUX_DEBAIN ONLY                                                                                 



 ##         ######   ###   ##  ##    ##  ##    ## 
 ##         ######   ###   ##  ##    ##  :##  ##: 
 ##           ##     ###:  ##  ##    ##   ##  ##  
 ##           ##     ####  ##  ##    ##   :####:  
 ##           ##     ##:#: ##  ##    ##    ####   
 ##           ##     ## ## ##  ##    ##    :##:   
 ##           ##     ## ## ##  ##    ##    :##:   
 ##           ##     ## :#:##  ##    ##    ####   
 ##           ##     ##  ####  ##    ##   :####:  
 ##           ##     ##  :###  ##    ##   ##::##  
 ########   ######   ##   ###  :######:  :##  ##: 
 ########   ######   ##   ###   :####:   ##    ## 

clear
 read -p "Required files, install them now? (y,n)";
if [ $REPLY == "y" ]; then
    load & 
    clear
    sudo apt-get update  # To get the latest package lists
    clear
    sudo apt install python -y
    clear
    sudo apt-get update
    clear
    sudo apt-get install toilet -y
    clear
    sudo apt-get update
    clear
    sudo apt-get install mplayer -y
    echo -ne "done";
fi                                                 
clear
 toilet -f bigascii12  HI!█                                                                                 
echo If you see "HI!", everything worked fine!
pause
toilet Chromeify LIGHT
                                                   

