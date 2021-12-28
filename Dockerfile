# docker build -t python:flask -f Dockerfile.python-flask2 .
# docker run -d --name python -p 5000:5000 pyhon:flask
# docker exec -it python curl localhost:5000


FROM python:3.10-alpine3.14
# FROM python:3.10-slim-bullseye

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt && apk add vim curl 
# pip install flask && pip freeze | grep Flask >> requirements.txt

COPY . .

CMD [ "python", "-m" , "flask", "run", "--host=0.0.0.0"]

EXPOSE 5000