
echo 

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

cat << "EOF"
   ___ _                      _  __      
  / __| |_  _ _ ___ _ __  ___(_)/ _|_  _ 
 | (__| ' \| '_/ _ \ '  \/ -_) |  _| || |
  \___|_||_|_| \___/_|_|_\___|_|_|  \_, |
  / /_ _\ \                         |__/ 
 | |\ V /| |                             
 | | \_/ | |                             
  \_\___/_/                              
  _ |___|_ ___ _  _ _____                
 | |  |_ _/ __| || |_   _|               
 | |__ | | (_ | __ | | |                 
 |____|___\___|_||_| |_|                 
                                         
Starting up, Please Wait...
EOF


load
sudo apt-get install lib32z1 -y &> /dev/null
sudo apt-get install nano -y &> /dev/null
echo -ne "done"
echo Your device is now unblocked!
