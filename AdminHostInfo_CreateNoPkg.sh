#!/bin/bash
#EDIT these variables
REPOPATH="/Users/Shared/munki_repo"

#Get the path to me!
SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"

makepkginfo --nopkg --name=LoginWindow-AdminHostInfo \
  --pkgvers=1.0 --installcheck_script=$SCRIPTPATH/AdminHostInfo_check.sh \
  --postinstall_script=$SCRIPTPATH/AdminHostInfo_enable.sh \
  --uninstall_script=$SCRIPTPATH/AdminHostInfo_disable.sh \
  --unattended_install > AdminHostInfo.pkginfo \
  --unattended_uninstall > AdminHostInfo.pkginfo \
  --developer="Precursor"\
  --description="This enables the ability to click on the clock in a login Window and toggle through various information such as: IPAddress; HostName; SystemVersion; SystemBuild; SerialNumber; DSStatus; and, Time. Based on info from https://twocanoes.com/12-customizations-for-the-mojave-macos-login-window-that-you-didnt-know-about/ and a suggestion for deployment by Kevin Ginger of kGinger Consulting. Install_Check and Removal script and other scripting techniques owe a lot to Armin Briegel. See: https://scriptingosx.com/2014/12/control-ssh-access-with-munki-nopkg-scripts/"

mv ~/AdminHostInfo.pkginfo $REPOPATH/pkgsinfo/AdminHostInfo.plist
cp $SCRIPTPATH/LoginWindow-AdminHostInfo.png $REPOPATH/icons/LoginWindow-AdminHostInfo.png
