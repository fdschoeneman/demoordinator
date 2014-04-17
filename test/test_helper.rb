ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'minitest/given'
require 'rails/test_help'

class ActionController::TestCase
  include Devise::TestHelpers
end

class MiniTest::Spec
  include FactoryGirl::Syntax::Methods
end

