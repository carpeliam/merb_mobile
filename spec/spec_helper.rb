require 'rubygems'
require 'merb-core'
require 'spec'

$:.push File.join(File.dirname(__FILE__), '..', 'lib')

require File.join( File.dirname(__FILE__), "..", "lib", "merb_mobile" )

#require 'merb_mobile'


# Require the fixtures
Dir[File.join(File.dirname(__FILE__), "fixtures", "*/**.rb")].each{|f| require f }

Merb.start :environment => 'test', :adapter => 'runner'

Spec::Runner.configure do |config|
  config.include Merb::Test::RequestHelper
end
