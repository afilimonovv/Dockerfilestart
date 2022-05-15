FROM ubuntu:18.04
workdir /code
RUN apt-get update -y 
RUN DEBIAN_FRONTEND=noniiinteractiv apt-get install -y python-all python-pip
COPY requirements.txt .
RUN pip install -qr requirements.txt
EXPOSE 5000
COPY app.py .
#ENTRYPOINT [ "python" ]
CMD ["python", "app.py" ]