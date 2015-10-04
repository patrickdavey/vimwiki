## Shopping List ##
If you want to build this yourself... there are a few things you'll need to get

1. [A Raspberry Pi, this is the B+ I had the B](http://www.adafruit.com/products/1914)
2. [A camera for the pi](http://www.adafruit.com/products/1367)
3. [A 5V power supply - you may have this already for a mobile phone](http://www.adafruit.com/products/501)
4. [A Prebuilt OS](https://www.adafruit.com/products/1121).  Not sure I'd recommend 
this one as you probably want an 8Gig card, well maybe, and it's easy enough to install yourself.  Whatever
card you do end up getting, make sure it's a class 10 SD card (the faster the better).  You can totally do this yourself without buying a card.  ANY SD card can be formatted to become the RaspberryPi OS... but if you want the easy life, sure, buy a prebuilt one!
5. [A gooseneck mount for holding the camera](http://www.modmypi.com/raspberry-pi/camera/camera-board-360-gooseneck-mount)
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

python /home/pi/cron_scripts/check.py
# this returns a happy exit status if we should take a picutre
if [ $? -eq 0 ]; then
  DATE=$(date +"%Y-%m-%d_%H%M%S")

  cd /home/pi/cron_scripts && raspistill -vf -w 1920 -h 1080 -hf -rot 180 -o /home/pi/camera/$DATE.jpg

  sleep 15 

  DATE=$(date +"%Y-%m-%d_%H%M%S")

  cd /home/pi/cron_scripts && raspistill -vf -w 1920 -h 1080 -hf -rot 180 -o /home/pi/camera/$DATE.jpg

  sleep 15 

  DATE=$(date +"%Y-%m-%d_%H%M%S")

  cd /home/pi/cron_scripts && raspistill -vf -w 1920 -h 1080 -hf -rot 180 -o /home/pi/camera/$DATE.jpg
fi

```

### Contents of /home/pi/cron_scripts/check.py
Set the contents of the latitude and longitude to be the location
of your webcam.... this means the webcam will only take pictures
between (natutical) sunrise and sunset

```python

import ephem
import sys
import datetime

class DaylightChecker:
    WEBCAM_LATITUDE = '-43.5648825'
    WEBCAM_LONGITUDE = '172.6591456'

    def __init__(self):
        self.observer = ephem.Observer()
        self.observer.lat = self.WEBCAM_LATITUDE
        self.observer.long = self.WEBCAM_LONGITUDE
        self.observer.horizon = '-12' # we use nautical twilight
        self.s = ephem.Sun()

    def _todays_sunrise(self):
        previous_rising = ephem.localtime(self.observer.previous_rising(self.s))
        next_rising = ephem.localtime(self.observer.next_rising(self.s))

        if datetime.datetime.now().day == next_rising.day:
            return next_rising
        else:
            return previous_rising

    def _todays_sunset(self):
        previous_sunset = ephem.localtime(self.observer.previous_setting(self.s))
        next_sunset = ephem.localtime(self.observer.next_setting(self.s))
        if datetime.datetime.now().day == next_sunset.day:
            return next_sunset
        else:
            return previous_sunset

    def _yesterday_midday(self):
      midday = datetime.time(hour=0) # relative to GMT we're at midnight
      yesterday = datetime.datetime.utcnow()
      return datetime.datetime.combine(yesterday, midday)

    def yesterday_sunset(self):
        self.observer.date = self._yesterday_midday()
        return ephem.localtime(self.observer.next_setting(self.s))

    def yesterday_sunrise(self):
        self.observer.date = self._yesterday_midday()
        return ephem.localtime(self.observer.previous_rising(self.s))

    def checkit(self):
        if self._todays_sunrise() < datetime.datetime.now() < self._todays_sunset():
            sys.exit(0)
        else:
            sys.exit(-1)

checker = DaylightChecker()
checker.checkit()
```


### Contents of /home/pi/cron_scripts/make_video.sh
```bash

cd /home/pi/camera

# nuke incomplete / broken jpgs, happens sometimes.
find . -type f -name '*.jpg' -size -10c -exec rm -f {} \;
ls *.jpg > stills.txt
ls -lah *.jpg > stills_full_info.txt

DATE=$(date +"%Y-%m-%d_%H%M")

mencoder -nosound -ovc lavc -lavcopts vcodec=mpeg4:aspect=16/9:vbitrate=8000000 -vf scale=1920:1080 -o $DATE.avi -mf type=jpeg:fps=24 mf://@stills.txt

cp $DATE.avi ~/finished_videos/
rm *.jpg
```

I have a separate script which uploads the videos to youtube, contact
me if you need more information.
