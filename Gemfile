source "https://rubygems.org"


ruby "3.0.6"
gem "rails", "~> 7.1.0"
<<<<<<< HEAD
gem 'bcrypt' 
gem 'faker' 
=======
gem 'rails-i18n'
gem 'will_paginate', '~> 3.3'
gem 'bcrypt' 
>>>>>>> japanization-and-time-format
gem 'bootstrap-sass'
gem 'will_paginate' 
gem 'bootstrap-will_paginate' 
gem "sprockets-rails"
gem "sqlite3", "~> 1.4"
gem "puma", ">= 5.0"
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "jbuilder"
gem "bootsnap", require: false
gem 'devise'
gem 'dotenv-rails', groups: [:development, :test]



group :development, :test do
  gem "debug", platforms: %i[ mri mswin mswin64 mingw x64_mingw ]
end

group :development do
  gem "web-console"
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
end

# Windows環境ではtzinfo-dataというgemを含める必要があります
# Mac環境でもこのままでOKです
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]