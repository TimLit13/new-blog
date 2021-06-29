source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.0'

gem 'rails', '~> 6.1.3', '>= 6.1.3.2'
gem 'sqlite3', '~> 1.4'
gem 'puma', '~> 5.0'
gem 'sass-rails', '>= 6'
gem 'webpacker', '~> 5.0'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.7'



# ===========================================
gem 'bootstrap', '~> 5.0.1'
gem 'sprockets-rails'
gem 'jquery-rails'
gem 'rails-assets-tether', '>= 1.1.0'
gem "coffee-script-source"
gem 'carrierwave', '~> 2.0'
gem "mini_magick"
gem "trix"
gem 'trix-rails', require: 'trix'
gem 'will_paginate-bootstrap4'
gem 'ancestry'

gem 'pg'

gem 'devise'

# -----------------------------------------pdf
gem 'wicked_pdf'

# ===========================================

gem 'bootsnap', '>= 1.4.4', require: false

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'letter_opener'
  gem 'rspec-rails', '~> 5.0.0'
  gem 'shoulda-matchers'
end

group :development do
  gem 'web-console', '>= 4.1.0'
  gem 'rack-mini-profiler', '~> 2.0'
  gem 'listen', '~> 3.3'
  gem 'spring'
  gem 'wkhtmltopdf-binary'
end

group :test do
  gem 'capybara', '>= 3.26'
  gem 'selenium-webdriver'
  gem 'webdrivers'
  gem 'factory_bot_rails'
  gem 'database_cleaner'

end

group :production do
  gem 'wkhtmltopdf-heroku'
end


gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
