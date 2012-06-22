source 'http://rubygems.org'

gem 'rails'
gem 'haml'
gem 'jquery-rails'
gem 'mechanize'


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails'
  gem 'coffee-rails'
  gem 'uglifier'
	gem 'twitter-bootstrap-rails', :git => 'git://github.com/seyhunak/twitter-bootstrap-rails.git'
	gem 'less'
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
