FROM python:3.11.6-alpine3.17

WORKDIR /app

RUN wget https://github.com/DariaBonapart/menufoodhelper/archive/refs/heads/master.zip -O master.zip
RUN unzip master.zip -d /app
RUN apk add tesseract-ocr
RUN pip install -r /app/menufoodhelper-master/requirements.txt
RUN ls -la /app

CMD ["/app/menufoodhelper-master/main.py"]
ENTRYPOINT ["python"]
