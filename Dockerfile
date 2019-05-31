FROM ruby:2.6.3-alpine3.9

ENV APP_DIR=/opt/app

RUN apk add --no-cache build-base postgresql-dev

RUN mkdir -p ${APP_DIR}

COPY src ${APP_DIR}

WORKDIR ${APP_DIR}

RUN bundle install




