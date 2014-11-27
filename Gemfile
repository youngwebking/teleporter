source 'https://rubygems.org'

ruby '2.1.1'
gem 'rails', '4.1.4'
gem 'sass-rails', '~> 4.0.3'
gem 'bootstrap-sass', '3.2.0.2'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'

gem 'puma'
gem 'rmagick'
gem 'carrierwave'
gem 'bcrypt', '~> 3.1.7'

group :doc do
  gem 'sdoc', '~> 0.4.0'
end

group :development do
  gem 'spring'
  gem 'faker'
  gem 'sqlite3'
  gem 'hrecord'
end

group :production do
  gem 'pg'
end

group :development, :test do
  gem 'spring-commands-rspec'
  gem 'rspec-rails'
  gem 'guard-rspec'
  gem 'rb-fsevent' if `uname` =~ /Darwin/
end
