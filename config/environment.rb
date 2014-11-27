# Load the Rails application.
require File.expand_path('../application', __FILE__)
require 'hrecord/connection'

# Initialize the Rails application.
Rails.application.initialize!

$hbase = HRecord::Connection.new 'http://hbase.davepowerman.com'
