FROM ruby:3.2.0-alpine

RUN apk add --update --no-cache \
  binutils-gold \
  build-base \
  curl \
  file \
  g++ \
  gcc \
  git \
  libstdc++ \
  libffi-dev \
  libc-dev \
  linux-headers \
  libxml2-dev \
  libxslt-dev \
  libgcrypt-dev \
  make \
  nodejs \
  openssl \
  pkgconfig \
  postgresql-dev \
  postgresql-client \
  tzdata \
  yarn
RUN rm -rf /var/cache/apk/*

WORKDIR /myapp

COPY Gemfile Gemfile.lock ./

RUN gem update --system && gem install bundler --no-document
RUN bundle install

COPY . .

ENTRYPOINT [ "bin/rails" ]
CMD [ "s", "-b", "0.0.0.0" ]

EXPOSE 3000
