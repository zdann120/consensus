source "https://rubygems.org"

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

ruby "2.4.1"

gem "autoprefixer-rails", "~> 7.1"
gem "delayed_job_active_record", "~> 4.1"
gem "flutie", "~> 2.0"
gem "honeybadger", "~> 3.1"
gem "jquery-rails", "~> 4.3"
gem "pg", "~> 0.21"
gem "puma", "~> 3.10"
gem "rack-canonical-host", "~> 0.2"
gem "rails", "~> 5.1"
gem "recipient_interceptor", "~> 0.1"
gem "sass-rails"
gem "simple_form", "~> 3.5"
gem "skylight", "~> 1.3"
gem "sprockets", "~> 3.7"
gem "title", "~> 0.0"
gem "uglifier", "~> 3.2"


group :development do
  gem "listen", "~> 3.1"
  gem "spring", "~> 2.0"
  gem "spring-commands-rspec", "~> 1.0"
  gem "web-console", "~> 3.5"
end

group :development, :test do
  gem "awesome_print", "~> 1.8"
  gem "bullet", "~> 5.6"
  gem "bundler-audit", "~> 0.6", require: false
  gem "dotenv-rails", "~> 2.2"
  gem "factory_girl_rails", "~> 4.8"
  gem "pry-byebug", "~> 3.4"
  gem "pry-rails", "~> 0.3"
  gem "rspec-rails", "~> 3.6"
end

group :development, :staging do
  gem "rack-mini-profiler", "~> 0.10", require: false
end

group :test do
  gem "capybara-webkit", "~> 1.14"
  gem "database_cleaner", "~> 1.6"
  gem "formulaic", "~> 0.4"
  gem "launchy", "~> 2.4"
  gem "shoulda-matchers", "~> 3.1"
  gem "simplecov", "~> 0.15", require: false
  gem "timecop", "~> 0.9"
  gem "webmock", "~> 3.0"
end

group :staging, :production do
  gem "rack-timeout", "~> 0.4"
end

gem 'high_voltage', "~> 3.0"
gem 'foundation-rails', "~> 6.4"
gem 'slim-rails', "~> 3.1"
gem 'active_interaction', "~> 3.5"
gem 'pundit', "~> 1.1"
gem 'devise', "~> 4.3"
gem 'devise_invitable', "~> 1.7"
gem 'money-rails', "~> 1.9"
