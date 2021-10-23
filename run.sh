docker kill jhipsterLab
docker container rm jhipsterLab

docker build -t jhipsterlab:latest .   
docker container run --name jhipsterLab -p 9999:8080  -it jhipsterlab:latest  /bin/bash ./mvnw