#download based image from dockerhub.com
FROM python:3.12-slim

#create a new folder in linux image
WORKDIR /app

#copy from based-operating-system to linux image
#copy fist dot represent source second dot represent destination 
#copy everything from source-operating-system to linux image
COPY . ./app

#run python file code
#CMD python ./app/my_code.py 
ENTRYPOINT ["python", "./app/my_code.py"]

