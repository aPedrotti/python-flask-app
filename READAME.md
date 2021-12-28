### Python Version: 3.10
### Requirements: Flask==2.0.2
### Port: 5000

=

Build as image:
```
export PROJECT_NAME="python-flask-example"
docker build -t $PROJECT_NAME  .
docker run -it --name $PROJECT_NAME $PROJECT_NAME sh
```
Run from local files:
```
export PROJECT_NAME="python-flask-example"
docker run -itd --name $PROJECT_NAME -v $PWD:/app -p 5000:5000 -w /app python:3.10-alpine3.14 && \
docker exec -it $PROJECT_NAME /app/start.sh
```

