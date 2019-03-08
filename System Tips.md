stat -f /
df -h 
df -i 

debugfs is interactive but may contain some additional information about the filesystem if you examine it in a RO state. From within debugfs the 'stat' command will provide some overall details about the filesystem:

https://www.systutorials.com/docs/linux/man/8-debugfs/
