FROM ruby:2.6.3-alpine3.9

RUN apk add --no-cache build-base

RUN mkdir -p /opt/app

COPY src /opt/app

WORKDIR /opt/app

RUN bundle




