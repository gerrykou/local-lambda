
![](https://img.shields.io/badge/Docker-808080?logo=docker&logoSize=auto)
![](https://img.shields.io/badge/-AWS%20Lambda-FF9900?style=flat-square&logo=AWS%20Lambda&logoColor=white)

# local-lambda
How to test a Docker `AWS Lambda` locally using `docker compose`.

We 'll follow instruction from [here](https://docs.aws.amazon.com/lambda/latest/dg/python-image.html#python-image-instructions), `(Optional) Test the image locally` section.  
But we 'll use `docker compose` and the [Compose Watch](https://docs.docker.com/compose/file-watch/) feature.  

Start the container
```sh
docker compose up --watch
```
Invoke the Lambda
```sh
curl "http://localhost:9000/2015-03-31/functions/function/invocations" -d '{}'
```
Stop the running container
```sh
docker compose down
```
Use `docker compose down -v` if you mounted volumes in your `compose.yaml` file.
