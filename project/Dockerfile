FROM ruby:2.7-alpine

RUN apk update && apk add -U --no-cache \
    build-base \
    imagemagick \
    wget \
    curl \
    bash \
    yarn \
    npm \
    postgresql-dev

RUN apk add  --no-cache --repository http://dl-cdn.alpinelinux.org/alpine/v3.9/main/ nodejs=10.19.0-r0

WORKDIR /app

COPY Gemfile* ./
COPY package.json ./

RUN bundle install -j4 --retry 3
RUN yarn install -j4 --retry 3

COPY . .

RUN bundle exec rake webpacker:install

EXPOSE 3000

CMD bundle exec rake db:create db:migrate && \
    bundle exec puma -v -C config/puma.rb && \
    yarn install
