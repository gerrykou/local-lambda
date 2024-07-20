
![](https://img.shields.io/badge/Docker-808080?logo=docker&logoSize=auto)
![](https://img.shields.io/badge/-AWS%20Lambda-FF9900?style=flat-square&logo=AWS%20Lambda&logoColor=white)

# local-lambda
How to test a docker lambda locally?

We 'll follow instruction from [here](https://docs.aws.amazon.com/lambda/latest/dg/python-image.html#python-image-instructions), `(Optional) Test the image locally` section.  
But we 'll use `docker compose` and the [watch](https://docs.docker.com/compose/file-watch/) feature.  

Start the containers
```sh
docker compose up --watch
```
Invoke the Lambda
```sh
curl "http://localhost:9000/2015-03-31/functions/function/invocations" -d '{}'
```
Stop the running containers
```sh
docker compose down
```