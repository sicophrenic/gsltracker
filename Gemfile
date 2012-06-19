source 'http://rubygems.org'

gem 'rails', '3.1.0'
gem 'haml'
gem 'jquery-rails'


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails', "  ~> 3.1.0"
  gem 'coffee-rails', "~> 3.1.0"
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
