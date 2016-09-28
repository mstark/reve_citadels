$LOAD_PATH.unshift File.expand_path("../../lib", __FILE__)

require "simplecov"
SimpleCov.start 'test_frameworks'

require "reve_citadels"
require 'webmock/rspec'


def one_citadel
  File.read("spec/support/one_citadel.txt")
end

def all_citadels
  File.read("spec/support/all_citadels.txt")
end
