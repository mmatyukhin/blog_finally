source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.1'
gem 'rails', '~> 5.2.1'
gem 'puma', '~> 3.11'
gem 'bootsnap', '>= 1.1.0', require: false

# db
gem 'pg'
gem 'sidekiq'

# layout
gem 'bootstrap-sass'
gem 'normalize-rails'
gem 'jbuilder', '~> 2.5'
gem 'coffee-rails', '~> 4.2'
gem 'uglifier', '>= 1.3.0'
gem 'sass-rails', '~> 5.0.4'
gem 'kaminari'
gem 'slim-rails'
gem 'font-awesome-rails'
gem 'russian'
gem 'jquery-rails'
gem 'jquery-ui-rails'

# content editor for users
gem 'quilljs-rails'

# likes
gem 'acts_as_votable', '~> 0.11.1'

# authorization/authentication/administrating
gem 'administrate'
gem 'devise'
gem 'omniauth'
gem 'omniauth-facebook'
gem 'omniauth-twitter'

# images
gem 'fog'
gem 'fog-aws'
gem 'mini_magick'
gem 'aws-sdk'
gem 'carrierwave-aws'
gem 'carrierwave'


group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'web-console', '>= 3.3.0'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test, :development do
  gem 'chromedriver-helper'
  gem 'selenium-webdriver'
  gem 'capybara'
  gem 'pry'
  gem 'rspec-rails'
  gem 'rails-controller-testing'
  gem 'shoulda-matchers'
  gem 'faker'
  gem 'factory_bot'
end

group :production do
end
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
