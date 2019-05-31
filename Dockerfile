FROM ruby:2.6.3-alpine3.9

ENV APP_DIR=/opt/app

RUN apk add --no-cache build-base postgresql-dev nodejs tzdata

RUN mkdir -p ${APP_DIR}

COPY src ${APP_DIR}

WORKDIR ${APP_DIR}

RUN bundle install

#CMD ["bundle", "exec", "rdebug-ide", "--port", "1236", "--dispatcher-port", "26162", "--host", "0.0.0.0", "--", "bin/rails", "-p", "8040", "-b", "'0.0.0.0'"]
CMD tail -f /etc/hosts





