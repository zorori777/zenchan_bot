# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) {|repo_name| "https://github.com/#{repo_name}" }

ruby '2.5.1'

gem 'rails', '~> 5.2.0'
gem 'mysql2', '>= 0.4.4', '< 0.6.0'
gem 'puma', '~> 3.11'
gem 'webpacker'
gem 'jbuilder', '~> 2.5'
gem 'bootsnap', '>= 1.1.0', require: false

# React
gem 'react-rails'

# CI
gem 'travis'

# Login Logout
gem 'devise'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  # For debug
  gem 'pry-rails'
  gem 'pry-byebug'
  gem 'pry-doc'
  # rubocop
  gem 'rubocop', require: false
  gem "pre-commit", require: false
  # test framework
  gem 'rspec-rails', '~> 3.7'
  gem 'factory_bot_rails'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  # seed data
  gem 'seed-fu', '~> 2.3'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
