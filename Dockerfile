FROM ruby:2.3

RUN mkdir /tasks-ms
WORKDIR /tasks-ms

ADD Gemfile /tasks-ms/Gemfile
ADD Gemfile.lock /tasks-ms/Gemfile.lock

RUN bundle install
ADD . /tasks-ms

EXPOSE 3003
