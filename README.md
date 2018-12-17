# APP

https://medium.com/@jfroom/docker-compose-3-bundler-caching-in-dev-9ca1e49ac441

A blank app.

## Install

Depends on [Docker](https://www.docker.com/).

    docker-compose build web && docker-compose up web
    alias dcrw="docker-compose run web"
    dcrw bin/rails db:setup

## Run specs

    dcrw bin/rspec

---

## Default Rails README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
