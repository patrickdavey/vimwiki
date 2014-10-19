## Shopping List ##
If you want to build this yourself... there are a few things you'll need to get

1. [A Raspberry Pi, this is the B+ I had the B](http://www.adafruit.com/products/1914)
2. [A camera for the pi](http://www.adafruit.com/products/1367)
3. [A 5V power supply - you may have this already for a mobile phone](http://www.adafruit.com/products/501)
4. [A Prebuilt OS](https://www.adafruit.com/products/1121).  Not sure I'd recommend 
this one as you probably want an 8Gig card, well maybe, and it's easy enough to install yourself.  Whatever
card you do end up getting, make sure it's a class 10 SD card (the faster the better).  You can totally do this yourself without buying a card.  ANY SD card can be formatted to become the RaspberryPi OS... but if you want the easy life, sure, buy a prebuilt one!
5. [A gooseneck mount for holding the camera](https://www.modmypi.com/raspberry-pi-camera/flexible-camera-mount)
6. [A wifi usb adapter](http://www.adafruit.com/products/814)

Now, all of those except the gooseneck mount can be bought at adafruit.com, it might be cheaper than modmypi.. do your research!  The gooseneck mount isn't essential, you can probably build a support mechanism out of lego or something anyway, but it is handy.


### Contents of the crontab
```bash
#
# This crontab tells the camera to run the camera.sh script
# every minute between 8am and 18:59.
#
# m h  dom mon dow   command
* 8-18 * * * /home/pi/cron_scripts/camera.sh

```

### Contents of /home/pi/cron_scripts/camera.sh
```bash
#!/bin/bash

DATE=$(date +"%Y-%m-%d_%H%M")

cd /home/pi/cron_scripts && raspistill -vf -hf -rot 180 -o /home/pi/camera/$DATE.jpg
```

### Contents of /home/pi/cron_scripts/make_video.sh
```bash
#!/bin/bash

cd /home/pi/camera
ls *.jpg > stills.txt

DATE=$(date +"%Y-%m-%d_%H%M")

mencoder -nosound -ovc lavc -lavcopts vcodec=mpeg4:aspect=16/9:vbitrate=8000000 -vf scale=1920:1080 -o $DATE.avi -mf type=jpeg:fps=24 mf://@stills.txt

cp $DATE.avi ~/

```
