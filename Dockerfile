FROM ruby:2.5.3
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev # nodejs
RUN ln -fs /usr/share/zoneinfo/Australia/Brisbane /etc/localtime
RUN echo "Australia/Brisbane" > /etc/timezone

RUN mkdir /project_app
WORKDIR /project_app
COPY Gemfile* /project_app/
RUN bundle

COPY . /project_app
