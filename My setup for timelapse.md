### Contents of the crontab
```bash
#
# This crontab tells the camera to run the camera.sh script
# every minute between 8am and 18:00.
#
# m h  dom mon dow   command
* 8,9,10,11,12,13,14,15,16,17,18 * * * /home/pi/cron_scripts/camera.sh

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
