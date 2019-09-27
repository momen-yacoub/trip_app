source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.7', '>= 5.0.7.2'
# gem 'rails-api'
# Use mysql as the database for Active Record
gem 'mysql2', '>= 0.3.18', '< 0.6.0'
# Use Puma as the app server
gem 'puma', '~> 3.0'
gem "puma_worker_killer", '0.0.7' # To relate : https://devcenter.heroku.com/articles/ruby-memory-use

gem 'sidekiq'
gem 'active_model_serializers', '0.10.0.rc4'
gem 'will_paginate', '~> 3.0.6'
gem 'has_scope'
gem 'paranoia', '~> 2.4' # for soft delete

group :development, :test do
  gem 'spring-commands-rspec'
  gem 'guard', '2.14.0'
  gem 'byebug', platform: :mri
  gem 'pry'
  gem 'pry-rails'
  gem 'faker'
end

group :development do
  gem 'listen', '~> 3.1.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'shoulda-matchers', '2.5', require: false
  gem 'factory_bot_rails'
  gem 'database_cleaner'
  gem 'json_spec'
  gem 'rspec-rails'
  gem 'shoulda-callback-matchers', '~> 1.1.1'
end
