FROM ruby:2.5.3
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev # nodejs
RUN ln -fs /usr/share/zoneinfo/Australia/Brisbane /etc/localtime
RUN echo "Australia/Brisbane" > /etc/timezone

RUN mkdir /project_app
WORKDIR /project_app
COPY Gemfile* /project_app/
COPY .bundle /project_app/
ENV BUNDLE_JOBS=4 \
    BUNDLE_PATH=/bundled_gems
RUN bundle package --verbose

COPY . /project_app
