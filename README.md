OS-X-Wallpaper-Changer
======================

Applescript for changing the Mac OS X desktop

- Philip Hutchison, April 2013 - http://pipwerks.com
- Bonno Nachtegaal-Karels, June 2014
- MIT license http://pipwerks.mit-license.org/

##What it does
This is an AppleScript that changes your Mac's desktop picture 
**The script will randomly select an image from the corresponding folder.** The image can be in any supported file type, including JPG, GIF and PNG images.

##How to use it

###Folder structure
If you choose to use the default settings, all you need to do is create a folder in your `Pictures` folder or use whatever folder you like:


###Images
You must supply your own images. Personally, I downloaded images from NationalGeographic.com, which provides high quality free wallpaper images. http://ngm.nationalgeographic.com/wallpaper/download
 
###Script file
This script file itself can be located anywhere. I keep mine in a dropbox folder, to use them across al my computers. But the example uses the `/Pictures/Wallpapers/Rotator/` folder.

The script must be run at specified intervals using automation of some kind. I use crontab, but you may also use a tool like GeekTool. 

http://developer.apple.com/library/mac/#documentation/Darwin/Reference/ManPages/man1/crontab.1.html

I configured my crontab to execute the script every 30 minutes. Use this line in your crontab:

    */30 * * * * /usr/bin/osascript ~/bin/rotateWallpaper.scpt > /dev/null 2>&1


##Customization
This script can be freely customized. It is heavily commented to make it easy to understand. For example, you can easily change the folder names by editing the script.

###Multiple monitors
The script includes support for multiple monitors. By default, it will display the same image on all monitors. If you prefer to set a unique image on each monitor, set the `useSamePictureAcrossDisplays` variable to `false`. 
