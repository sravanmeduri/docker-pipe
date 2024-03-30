FROM python:latest

COPY test.py /
COPY main.py /



CMD [ "python", "./main.py" ]
