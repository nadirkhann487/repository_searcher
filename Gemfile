# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.2'

gem 'bootsnap', '>= 1.4.4', require: false
gem 'github-search'
gem 'jbuilder', '~> 2.7'
gem 'pg', '~> 1.5', '>= 0.18', '< 2.0'
gem 'puma', '~> 5.0'
gem 'rails', '~> 6.1.7'
gem 'rspec-rails', '~> 5.1'
gem 'sass-rails', '>= 6'
gem 'turbolinks', '~> 5'
gem 'webpacker', '~> 5.0'

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'pry'
end

group :development do
  gem 'listen', '~> 3.3'
  gem 'rack-mini-profiler', '~> 2.0'
  #gem 'spring'
  gem 'web-console', '>= 4.1.0'
end

group :test do
  gem 'capybara', '>= 3.26'
  gem 'selenium-webdriver', '>= 4.0.0.rc1'
  gem 'webdrivers'
end

gem 'rails-controller-testing'
gem 'rubocop'
gem 'rubocop-performance'
gem 'rubocop-rails'
gem 'rubocop-rspec'
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]