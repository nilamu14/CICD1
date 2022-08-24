<<<<<<< HEAD
FROM python:3.9
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
EXPOSE $PORT 
=======
FROM python:3.9
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
EXPOSE $PORT 
>>>>>>> f57b8134bf6ddf42ce3a3f783d849b912fe7095f
CMD gunicorn --workers=4 --bind 0.0.0.0:$PORT app:app