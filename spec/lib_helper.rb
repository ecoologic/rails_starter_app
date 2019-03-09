# require 'lib_helper' # Use when testing libraries in `spec/lib/`
require 'spec_helper'

# Rails auto-loading system... needs Rails
Dir[File.join(__dir__, 'lib', '*.rb')].each { |f| require f }
