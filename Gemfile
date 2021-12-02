# frozen_string_literal: true

source 'https://rubygems.org'

ruby '3.0.2'

group :test do
  gem 'rspec'
  gem 'rubocop-rspec', require: false
  gem 'simplecov', require: false, group: :test
  gem 'simplecov-console', require: false, group: :test
end

group :development, :test do
  gem 'capybara'
  gem 'rubocop', '1.20'
  gem 'sinatra'
  gem 'sinatra-contrib'
end

gem 'webrick', '~> 1.7'
