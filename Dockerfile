FROM ruby:2.3
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev postgresql-client

RUN mkdir /fuel_economy
WORKDIR /fuel_economy
ADD Gemfile /fuel_economy/Gemfile
ADD Gemfile.lock /fuel_economy/Gemfile.lock
RUN bundle install
ADD . /fuel_economy
