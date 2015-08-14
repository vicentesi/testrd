source 'https://rubygems.org'
ruby '2.2.0'

gem 'rails', '4.2.1'
gem 'bootstrap-sass', '2.1'
gem 'bcrypt-ruby', '3.0.1'
gem 'faker', '1.0.1'
gem 'will_paginate', '3.0.3'
gem 'bootstrap-will_paginate', '0.0.6'
gem 'jquery-rails'

group :development, :test do
  gem 'sqlite3'
  gem 'rspec-rails', '~> 3.0'
  gem 'guard-rspec', require: false
  gem 'guard-spork'
  gem 'childprocess', '0.3.6'
  gem 'spork', '0.9.2'
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails', '~> 5.0'
  gem 'coffee-rails'
  gem 'uglifier', '1.2.3'
end

group :test do
  gem 'capybara', '1.1.2'
  gem 'factory_girl_rails'
  gem 'cucumber-rails', '1.2.1', :require => false
  gem 'database_cleaner', '0.7.0'
  # gem 'launchy', '2.1.0'
  # gem 'rb-fsevent', '0.9.1', :require => false
  # gem 'growl', '1.0.3'
end

group :production do
  gem 'pg'
  gem 'rails_12factor'
end