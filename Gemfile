source 'https://rubygems.org'
ruby '2.2.0'

gem 'rails', '4.2.1'
gem 'bootstrap-sass', '~> 3.2.0'
gem 'bcrypt-ruby', '3.0.1'
gem 'jquery-rails'

gem 'turbolinks'
gem 'sass-rails', '~> 5.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'uglifier', '>= 1.3.0'

# my gem
gem 'testrd_gem', '>= 0.3.0'

group :development, :test do
  gem 'sqlite3'
  gem 'rspec-rails', '~> 3.0'
  gem 'guard-rspec'
  gem 'guard-spork'
  gem 'childprocess', '0.3.6'
  gem 'spork'
  gem 'spork-rails'
  gem 'coveralls'
end

group :test do
  gem 'capybara', '2.2.0'
  gem 'factory_girl_rails'
  gem 'cucumber-rails', '1.2.1', :require => false
  gem 'database_cleaner', '0.7.0'
  gem 'launchy', '2.1.0'
  gem 'rb-fsevent', '0.9.5', :require => false
  gem 'growl', '1.0.3'
end

group :production do
  gem 'pg'
  gem 'rails_12factor'
end
