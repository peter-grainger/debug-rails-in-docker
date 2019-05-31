FROM ruby:2.6.3-alpine3.9

ENV APP_DIR=/opt/app

RUN apk add --no-cache build-base postgresql-dev nodejs tzdata git

RUN mkdir -p ${APP_DIR}


WORKDIR ${APP_DIR}

COPY src/Gemfile ${APP_DIR}/

RUN bundle

COPY src ${APP_DIR}


CMD ["bundle", "exec", "rdebug-ide", "--port", "1236", "--dispatcher-port", "26162", "--host", "0.0.0.0", "--", "/usr/local/bundle/bin/rails", "-p", "8080", "-b", "'0.0.0.0'"]
