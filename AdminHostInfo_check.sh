#!/bin/bash

# this will run as a munki install_check script
# exit status of 0 means install needs to run
# exit status not 0 means no installation necessary

# Is AdminHostInfo enabled
if [[ $(defaults read /Library/Preferences/com.apple.loginwindow AdminHostInfo) = 'IPAddress' ]];
  then
    echo "AdminHostInfo is on and no install is required!"
    exit 1
fi
echo "AdminHostInfo is not set so install will proceed"
exit 0