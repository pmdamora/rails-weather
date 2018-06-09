source 'https://rubygems.org'
ruby '2.5.1'

gem 'rails',                   '5.2.0'
gem 'puma',                    '3.9.1'  # Use Puma as the app server
gem 'sass-rails',              '5.0.6'  # Use SCSS for stylesheets
gem 'uglifier',                '3.2.0'  # Use Uglifier as compressor for JavaScript assets
gem 'coffee-rails',            '4.2.2'  # Use CoffeeScript for .coffee assets and views
gem 'jquery-rails',            '4.3.1'
gem 'turbolinks',              '5.0.1'  # Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'jbuilder',                '2.7.0'  # Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'bootsnap',                '1.1.0', require: false  # Reduces boot times through caching; required in config/boot.rb
gem 'bootstrap',               '4.1.1'

group :development, :test do
  gem 'sqlite3', '1.3.13'  # Use sqlite3 as the database for Active Record
  gem 'byebug',  '10.0.2', platform: :mri  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console',           '3.5.1'
  gem 'listen',                '3.1.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring',                '2.0.2'
  gem 'spring-watcher-listen', '2.0.1'
end

group :test do
  # Adds support for Capybara system testing
  gem 'capybara',             '3.2.1'
  gem 'capybara-webkit',      '1.15.0'
  gem 'minitest-reporters',   '1.3.0'
  gem 'guard',                '2.14.2'
  gem 'guard-minitest',       '2.4.6'
end

group :production do
  gem 'pg', '1.0.0'  # Use PostgreSQL as the database for Active Record
end