#!/bin/bash
source name.dat
echo "=== BUILD $name ==="
#rclone copy path: . --include="apt_installer.dat" -P --max-depth 1
 sudo docker build -t abraxas678/$name:latest . --no-cache 
echo
#rm apt_installer.dat
#source line
echo
echo "=== PUSH $name ==="
 sudo docker push abraxas678/$name:latest
#echo "=== START $name ==="
#bash start.sh

#say.sh "sudo dockerfile for $name processed"


#sudo docker kill $name
#sudo docker rm $name
#sudo docker run -d -it --name $name -v /$path/$name:/$name -e TZ=Europe/Madrid --restart unless-stopped abraxas678/debian:latest

#echo http://$server:$port > openme.txt
#rclone move ./ gd:/eg/openme/ --include openme.txt

#curl -X POST -H "Content-Type: application/json" -d '{"myvar1":"foo","myvar2":"bar","myvar3":"foobar"}' "https://joinjoaomgcd.apspot.com/_ah/api/messaging/v1/sendPush?apikey=304c57b5ddbd4c10b03b76fa97d44559&deviceNames=Lenovo&url=http://$server:$port"
