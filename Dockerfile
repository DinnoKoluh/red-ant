FROM python:alpine3.19

WORKDIR /red-ant

RUN apk add nano

COPY ["requirements.txt", "./"]
RUN pip install --no-cache-dir -r requirements.txt

COPY ["src", "src"]
COPY ["scripts", "./"]

RUN chmod +x start_server.sh

ENTRYPOINT ["sh", "-c", "./start_server.sh" ]

