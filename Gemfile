# frozen_string_literal: true

source 'https://rubygems.org'

gem 'rails', '~> 7.2.2'
gem 'sprockets-rails'
gem 'sqlite3', '>= 1.4' # 開発・テスト用。本番はPostgreSQLやMySQLに置き換え推奨
gem 'puma', '>= 5.0'
gem 'importmap-rails'
gem 'turbo-rails'
gem 'stimulus-rails'
gem 'jbuilder'
gem 'tzinfo-data', platforms: %i[windows jruby]
gem 'bootsnap', require: false

gem 'bootstrap', '~> 5.3.0'
gem 'carrierwave', '~> 2.2.3'
gem 'devise', '4.9.4'
gem 'bcrypt', '~> 3.1.7' # devise用
gem 'google-api-client', '~> 0.53'
gem 'jquery-rails'
gem 'kaminari'
gem 'mini_magick', '~> 4.11.0'
gem 'rest-client', '~> 2.1'
gem 'sassc-rails'

group :development, :test do
  gem 'dotenv-rails'
  gem 'brakeman', require: false
  gem 'debug', platforms: %i[mri windows], require: 'debug/prelude'
  gem 'rubocop-rails-omakase', '~> 1.0', require: false # バージョン固定で安定化
end

group :development do
  gem 'web-console'
  gem 'rails-erd' # ER図生成用
end

group :test do
  gem 'capybara'
  gem 'selenium-webdriver'
end
