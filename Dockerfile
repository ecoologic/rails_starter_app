FROM ruby:2.5.3
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev # nodejs

RUN mkdir /project_app
WORKDIR /project_app
COPY Gemfile* /project_app/
RUN bundle

COPY . /project_app
