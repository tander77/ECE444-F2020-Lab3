FROM ubuntu:latest
RUN apt-get update -y
RUN apt-get install -y python3-pip python-dev build-essential
COPY . /app
WORKDIR /app
RUN pip3 install -r requirements.txt
# RUN pip3 install flask
# RUN pip3 install flask-script
# RUN pip3 install flask-bootstrap
# RUN pip3 install flask-moment
# RUN pip3 install flask-wtf
ENTRYPOINT ["python3"]
CMD ["hello.py"]