require 'simplecov'
SimpleCov.start do
  enable_coverage :branch

  add_filter %r{^/config/}
  add_filter %r{^/test/}

  add_group 'Models', 'app/models'
  add_group 'Helpers', 'app/helpers'
  add_group 'Controllers', 'app/controllers'
end

if ENV['CI'] == 'true'
  require 'codecov'
  SimpleCov.formatter = SimpleCov::Formatter::Codecov
end

ENV['RAILS_ENV'] ||= 'test'

require_relative '../config/environment'
require 'rails/test_help'

module ActiveSupport
  class TestCase
    include FactoryBot::Syntax::Methods

    # Run tests in parallel with specified workers
    parallelize(workers: :number_of_processors)

    # Add more helper methods to be used by all tests here...
  end
end
