# Login Window AdminHostInfo nopkg item

> v. 1.0 
> March 9, 2019  
> Alex Narvey / Precursor.ca  

Enables the ability to click on the clock in a Login Window and toggle through various information such as: IPAddress; HostName; SystemVersion; SystemBuild; SerialNumber; DSStatus; and, Time.
Based on info from https://twocanoes.com/12-customizations-for-the-mojave-macos-login-window-that-you-didnt-know-about/ and a suggestion for deployment by Kevin Ginger of kGinger Consulting.
Install_Check and Removal script and other scripting techniques owe a lot to Armin Briegel. See: https://scriptingosx.com/2014/12/control-ssh-access-with-munki-nopkg-scripts/

No warrantee is offered. Neither express nor implied. Use at your own risk.

To use:

1) Unzip the file LoginWindow-AdminHostInfo.zip

2) Open the file "AdminHostInfo-CreateNoPkg.sh" and edit the variable REPOPATH

3) Open a Terminal Window and type "sh " (note the space)

4) Drag and drop the file "AdminHostInfo-CreateNoPkg.sh" into the Terminal Window and hit Return

5) This will create the nopkg item "LoginWindow-AdminHostInfo" in the pkgsinfo folder of your munki repo and place the icon in the icons folder of your munki repo.

6) Check the results in Munki Admin. Apply any customizations and Save. Deploy to Manifests as required.

Notes:

- The Login Window customizations come from: https://twocanoes.com/12-customizations-for-the-mojave-macos-login-window-that-you-didnt-know-about/
- The idea to deploy was inspired by Kevin Ginger of kGinger Consulting
- The scripting techniques used are based on Armin Briegel's. See: https://scriptingosx.com/2014/12/control-ssh-access-with-munki-nopkg-scripts/

Release Notes:

* March 9, 2019 Version 1.0


## Contributors
* Alex Narvey

—
Alex Narvey
precursor.ca