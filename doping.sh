
#!/bin/bash

for ip in `seq 1 254`;do
#echo "ping 192.168.32.$ip"
#ping -c 1 "192.168.32.$ip"| grep "bytes from" &
ping -c 1 "192.168.32.$ip"| grep "bytes from" | cut -d " " -f4 | cut -d ":" -f1>
done
