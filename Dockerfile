#use official python image as base image
FROM python:3.9-buster

#set working directory in container 
WORKDIR /app

#copy requiremnts file to working directory 
COPY requirements.txt .

#install required python package 
RUN pip3 install --no-cache-dir -r requirements.txt

#copy the application to working directory 
COPY . .

#set the environment variable for flask app
ENV FLASK_RUN_HOST=0.0.0.0

#expose the port on which flask app will run
EXPOSE 5000

#start the flask app when container is run
CMD ["flask", "run"]