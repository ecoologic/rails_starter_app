# APP

A blank app.

## Install

Depends on [Docker](https://www.docker.com/).

    docker-compose build web && docker-compose up web
    alias dcrw="docker-compose run web"
    dcrw bin/rails db:setup

## Run specs

    dcrw bin/rspec

## Known Docker issues

- [ ] Docker writing files as root causes problems to the host
- [ ] Any change to Gemfile triggers the download of all gems

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
