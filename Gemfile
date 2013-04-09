source 'http://rubygems.org'

gem 'rails'
gem 'haml'
gem 'jquery-rails'
gem 'mechanize'
gem 'devise'
gem 'less-rails'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails', '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
  gem 'less'
  gem 'therubyracer', :platform => :ruby
  gem 'twitter-bootstrap-rails', :git => 'https://github.com/seyhunak/twitter-bootstrap-rails.git'
end

group :production do
	gem 'pg'
	gem 'thin'
end

group :test, :development do
	gem 'sqlite3'
end

group :test do
  # Pretty printed test output
  gem 'turn', :require => false
end
