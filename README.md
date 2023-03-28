# maven-docker
use maven and docker together

## build
`sudo ./build`  
or  
`sudo docker build -t sanko/mavendocker .`

## run
`sudo ./run`  
or  
`sudo docker run -d --rm -p 3000:8080 sanko/mavendocker`

## stop
`sudo ./stop`  
or  
`sudo docker stop $(sudo docker ps -a -q --filter ancestor=sanko/mavendocker --format="{{.ID}}")`

