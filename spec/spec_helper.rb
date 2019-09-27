#ENV['RAILS_ENV'] = 'test'
#require 'rubygems'
#require 'spork'
#require File.expand_path("../../config/environment", __FILE__)
#require 'rspec/rails'
#require 'shoulda/matchers'
require 'sidekiq/testing'
Sidekiq::Testing.fake!

#class Spork::TestFramework::RSpec
  #def run_tests(argv, stderr, stdout)
    #if rspec1?
      #::Spec::Runner::CommandLine.run(
        #::Spec::Runner::OptionParser.parse(argv, stderr, stdout)
      #)
   #elsif rspec3?
     #options = ::RSpec::Core::ConfigurationOptions.new(argv)
     #::RSpec::Core::Runner.new(options).run(stderr, stdout)
    #else
      #::RSpec::Core::CommandLine.new(argv).run(stderr, stdout)
    #end
  #end

 #def rspec3?
   #return false if !defined?(::RSpec::Core::Version::STRING)
   #::RSpec::Core::Version::STRING =~ /^3\./
 #end
#end

#Spork.prefork do

  #Dir[Rails.root.join('spec', 'support', '**', '*.rb')].each { |f| require f }

  #RSpec.configure do |config|
    #config.use_transactional_fixtures = false
    #config.infer_spec_type_from_file_location!
    #config.expect_with :rspec do |expectations|
      #expectations.include_chain_clauses_in_custom_matcher_descriptions = true
    #end
    #config.mock_with :rspec do |mocks|
      #mocks.verify_partial_doubles = true
    #end
    #config.before(:each, type: :controller) do
      #load_actions_and_roles
    #end
  #end
#end

#Spork.each_run do

#end
RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.filter_run :focus => true
  config.run_all_when_everything_filtered = true

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  # Use color in STDOUT
  config.color = true

  # Use color not only in STDOUT but also in pagers and files
  config.tty = true

  # Use the specified formatter
  config.formatter = :documentation #:progress :progress, :html,

  config.expect_with :rspec do |c|
    c.syntax = [:should, :expect]
  end

  end
end
