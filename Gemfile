# NOTE: Remember to run `docker-compose build` if you change this file
#       If you remove a gem, Gemfile.lock won't be updated
#       as dependencies are satisfied anyway.
#       See bin/docker-entrypoint.sh
source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.3'

gem 'rails', '5.2.2'
gem 'puma'
gem 'pg'
gem 'sassc-rails'
# gem 'uglifier', '>= 1.3.0'
# gem 'mini_racer', platforms: :ruby
# gem 'jbuilder', '~> 2.5'
# gem 'redis', '~> 4.0'
# gem 'bcrypt', '~> 3.1.7'
# gem 'mini_magick', '~> 4.8'
# gem 'capistrano-rails', group: :development
gem 'bootsnap', require: false

gem 'devise'
gem 'cancancan'

group :development, :test do
  # gem 'byebug', platforms: %w[mri mingw x64_mingw]
  gem 'pry-rails'
  gem 'pry-doc'
  gem 'pry-nav'
  gem 'pry-stack_explorer'

  gem 'rubocop', require: false
  gem 'rubocop-rspec'

  gem 'rspec-rails'
end

group :development do
  gem 'listen'
  gem 'spring'
  gem 'spring-watcher-listen'
  gem 'web-console'
end
