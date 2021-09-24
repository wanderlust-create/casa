FROM ruby:3.0.2 AS builder

LABEL maintainer="mohamed.asan@freshworks.com"

RUN apt-get update && apt-get install -y \
  build-essential \
  curl \
  bash \
  vim \
  postgresql \
  postgresql-client \
  tzdata \
  imagemagick && \
  curl -sL https://deb.nodesource.com/setup_10.x | bash - && \
  curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
  echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
  apt-get update && apt-get install -y nodejs yarn

ENV RAILS_ROOT=/casa/
COPY . $RAILS_ROOT
WORKDIR $RAILS_ROOT

RUN bundle install
RUN yarn install --check-files

EXPOSE 3000

ENTRYPOINT ["./docker-entrypoint.sh"]
CMD ["bin/rails", "s", "-b", "0.0.0.0"]
