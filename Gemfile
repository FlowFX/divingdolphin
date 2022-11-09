source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.1.1'

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem 'rails', '~> 7.0.2', '>= 7.0.2.2'

# The modern asset pipeline for Rails [https://github.com/rails/propshaft]
gem 'propshaft', '~> 0.6.4'

# Use postgresql as the database for Active Record
gem 'pg', '~> 1.1'

# Use the Puma web server [https://github.com/puma/puma]
gem 'puma', '~> 5.0'

# Use JavaScript with ESM import maps [https://github.com/rails/importmap-rails]
gem 'importmap-rails', '~> 1.0.3'

# Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
gem 'turbo-rails', '~> 1.0.1'

# Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem 'stimulus-rails', '~> 1.0.4'

# Use Tailwind CSS [https://github.com/rails/tailwindcss-rails]
gem 'tailwindcss-rails', '~> 2.0.7'

# Build JSON APIs with ease [https://github.com/rails/jbuilder]
# gem 'jbuilder'

# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem "kredis"

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
# gem "bcrypt", "~> 3.1.7"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', '~> 2.0', platforms: %i[mingw mswin x64_mingw jruby]

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '~> 1.11.1', require: false

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
# gem "image_processing", "~> 1.2"

# .env
gem 'dotenv-rails', '~> 2.7.2'

# Authentication
gem 'devise', '~> 4.8.1'

# Performance monitoring
gem 'newrelic_rpm', '~> 8.5.0'

# Forms
gem 'simple_form', '~> 5.1.0'
gem 'simple_form-tailwind', '~> 0.1.1'

# Views
gem 'view_component', '~> 2.75.0'

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem 'debug', '~> 1.4.0', platforms: %i[mri mingw x64_mingw]

  # FactoryBot
  gem 'factory_bot_rails', '~> 6.2.0'

  # Code linting
  gem 'rubocop', '~> 1.25.1', require: false
  gem 'rubocop-minitest', '~> 0.18.0', require: false
  gem 'rubocop-rails', '~> 2.13.2', require: false

  # Code analysis
  gem 'brakeman', '~> 5.2.1', require: false

  # Application preloading for TDD
  gem 'spring', '~> 4.0.0', require: false
end

group :development do
  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem 'web-console', '~> 4.2.0'

  # Add speed badges [https://github.com/MiniProfiler/rack-mini-profiler]
  # gem "rack-mini-profiler"
end

group :test do
  # Code coverage
  gem 'codecov', '~> 0.6.0', require: false
  gem 'simplecov', '~> 0.21.2', require: false
end
