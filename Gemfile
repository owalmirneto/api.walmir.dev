# frozen_string_literal: true

source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby File.read(".ruby-version").strip

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem "rails", "~> 7.0.4"
# Use postgres as the database for Active Record
gem "pg", "~> 1.2", ">= 1.2.3"
# Use the Puma web server [https://github.com/puma/puma#rails]
gem "puma", "~> 5.4"
# Reduces boot times through caching; required in config/boot.rb
# https://github.com/Shopify/bootsnap#usage
gem "bootsnap", "~> 1.7", ">= 1.7.7", require: false
# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
# https://github.com/cyu/rack-cors#rails-configuration
gem "rack-cors", "~> 1.1"

group :development, :test do
  # https://github.com/bkeepers/dotenv#rails
  gem "dotenv-rails", "~> 2.8", require: false
  # https://github.com/pry/pry-rails#usage
  gem "pry-rails", "~> 0.3.9", require: false
  # https://github.com/presidentbeef/brakeman
  gem "brakeman", "~> 5.4", require: false
  # https://github.com/rubocop-hq/rubocop-rails#usage
  gem "rubocop-rails", "~> 2.17", require: false
  # https://github.com/rubocop-hq/rubocop-performance#usage
  gem "rubocop-performance", "~> 1.15", require: false
end
