FROM python:3.7-alpine
RUN /sbin/apk add tor
COPY . /opt/joker1/
RUN /usr/local/bin/pip install -r /opt/joker1/requirements.txt

ENTRYPOINT ["python", "/opt/joker1/joker.py"]