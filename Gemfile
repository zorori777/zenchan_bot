source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.1'

gem 'rails', '~> 5.2.0'
# database for AR
gem 'mysql2'
# Use Puma as the app server
gem 'puma', '~> 3.11'
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem 'webpacker'
# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false
# CI
gem 'travis'
# line_bot_sdk
gem 'line-bot-api'

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
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
