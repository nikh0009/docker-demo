#Using python official runtime
FROM python:2.7-slim

#Setting work directory
WORKDIR /app

#Copy current content to /app
COPY . /app

#Install any dependencies
RUN pip install --trusted-host pypi.python.org -r requirements.txt

#Exposing port 80
EXPOSE 80

#Define environment variable 
ENV NAME World

#Run app.py when the container launches
CMD ["python","app.py"]

