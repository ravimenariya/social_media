docker build -t $JOB_NAME:$BUILD_ID .

docker tag $JOB_NAME:$BUILD_ID ravi190/$JOB_NAME:$BUILD_ID

docker tag $JOB_NAME:$BUILD_ID ravi190/$JOB_NAME:latest

docker push ravi190/$JOB_NAME:$BUILD_ID

docker push ravi190/$JOB_NAME:latest

docker rmi -f $JOB_NAME:$BUILD_ID ravi190/$JOB_NAME:$BUILD_ID ravi190/$JOB_NAME:latest
