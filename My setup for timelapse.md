### Contents of the crontab
```bash
# m h  dom mon dow   command
* * * * * /home/pi/cron_scripts/wificheck.sh
* 8,9,10,11,12,13,14,15,16,17,18 * * * /home/pi/cron_scripts/camera.sh

```

### Contents of /home/pi/cron_scripts/camera.sh
```bash
#!/bin/bash

DATE=$(date +"%Y-%m-%d_%H%M")

cd /home/pi/cron_scripts && raspistill -vf -hf -rot 180 -o /home/pi/camera/$DATE.jpg
```
