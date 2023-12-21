FROM ubuntu:18.04
RUN apt-get update -y \
    && apt-get install -y python-pip python3-dev
WORKDIR /app
COPY ./requirements.txt /app/requirements.txt
RUN pip install -r requirements.txt

CMD [ "python", "./app.py" ]