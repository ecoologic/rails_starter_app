FROM ruby:2.5.3
MAINTAINER Erik Ecoologic
RUN groupadd docker
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev # nodejs
RUN ln -fs /usr/share/zoneinfo/Australia/Brisbane /etc/localtime
RUN echo "Australia/Brisbane" > /etc/timezone

RUN mkdir /development
WORKDIR /development
COPY Gemfile* /development/
COPY ./docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh
ENTRYPOINT ["/docker-entrypoint.sh"]
ENV BUNDLE_PATH=/development_bundle_cache \
    BUNDLE_BIN=/development_bundle_cache/bin \
    GEM_HOME=/development_bundle_cache
ENV PATH="${BUNDLE_BIN}:${PATH}"

COPY . /development
