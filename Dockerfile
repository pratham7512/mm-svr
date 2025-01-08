FROM python:3.10-bullseye

RUN mkdir /app
RUN mkdir /app/assets

COPY *.py /app/
COPY requirements.txt /app/
copy assets/* /app/assets/


WORKDIR /app
RUN pip3 install -r requirements.txt

EXPOSE 10000

CMD ["python3", "server.py"]