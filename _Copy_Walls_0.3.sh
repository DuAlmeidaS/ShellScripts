#!/bin/bash
clear

#For destination folder
echo "Choose the appropriate share in Windows environment.:"
echo "2 for Enterprise or 3 for Professional"
read _WindowsEnvironment
case $_WindowsEnvironment in
  2)
    _WindowsDestination="/home/du/Pictures/Enterprise_Walls/"
    echo "Destination folder has been setup to Enterprise environment. Ready to copy?"
    read -t 5
    ;;
    3)
    _WindowsDestination="/home/du/Pictures/Professional_Walls/"
    echo "Destination folder has been setup to Professional environment. Ready to copy?"
    read -t 5
    ;;
    *)
    echo "Choose 2 or 3..."
    read _WindowsEnvironment
    read
    ;;
  esac

#For Bing service folder
clear
echo "Copying Bing folder..."
echo
_BingSource="/home/du/.config/variety/Downloaded/Bing/*.jpg"
ls -l ${_BingSource}
echo
echo "How many files at Bing folder?"
ls ${_BingSource} | wc -w
read -p "Hit enter to copy all the .jpg files from Bing folder to _Walls main repository !"
mv -v ${_BingSource} ${_WindowsDestination}
clear

#For Desktoppr service folder
echo "Copying Desktoppr folder..."
echo
_DesktopprSource="/home/du/.config/variety/Downloaded/Desktoppr/*.jpg"
ls -l ${_DesktopprSource}
echo
echo "How many files at Desktoppr folder?"
ls ${_DesktopprSource} | wc -w
read -p "Hit enter to copy all the .jpg files from Desktoppr folder to _Walls main repository !"
mv -v ${_DesktopprSource} ${_WindowsDestination}
clear
clear

#For Unsplash service folder
echo "Copying Unsplash folder..."
echo
_UnsplashSource="/home/du/.config/variety/Downloaded/Unsplash/*.jpg"
ls -l ${_UnsplashSource}
echo
echo "How many files at Unsplash folder?"
ls ${_UnsplashSource} | wc -w
read -p "Hit enter to copy all the .jpg files from Unsplash folder to _Walls main repository !"
mv -v ${_UnsplashSource} ${_WindowsDestination}
clear
