FROM python:3.7.1-alpine3.7

RUN apk update && apk upgrade && \
    apk add --no-cache bash git openssh

RUN pip install github_webhook

WORKDIR /app
COPY ./src /app

CMD [ "./start.sh" ]