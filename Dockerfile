FROM ruby:2.3.1

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

RUN mkdir /trip_app
WORKDIR /trip_app

COPY Gemfile /trip_app/Gemfile
COPY Gemfile.lock /trip_app/Gemfile.lock

ENV BUNDLER_VERSION=2.0.1

RUN gem install bundler --version 2.0.1 && bundle install

COPY . /trip_app
