Dir[Rails.root.join("lib/tasks/support/*.rb")].each {|f| require f}

require 'faker/stoked'

include RakePrettifier
include RakeColorizer

desc "alias for db:development:populate"

task populate: ['db:development:populate', :environment]


