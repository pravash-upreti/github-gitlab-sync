FROM python:3.7.1-alpine3.7
RUN pip install github_webhook
WORKDIR /app
COPY ./src /app

CMD [ "printenv" ]