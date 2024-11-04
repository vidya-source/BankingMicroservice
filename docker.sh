cd /var/lib/jenkins/workspace/Maven-Project
sudo docker build . -t vidya801/prodimg:$BUILD_NUMBER
sudo docker push vidya801/prodimg:$BUILD_NUMBER
sudo chmod 777 docker.sh
sudo bash docker.sh
sudo docker container run -it --name prodcontainer -d vidya801/prodimg:$BUILD_NUMBER
