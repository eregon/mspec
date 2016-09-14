RUBY_PATCHLEVEL = 0

require 'mspec/matchers'
require 'mspec/expectations'
require 'mspec/mocks'
require 'mspec/runner'
require 'mspec/guards'
require 'mspec/helpers'

# If the implementation on which the specs are run cannot
# load pp from the standard library, add a pp.rb file that
# defines the #pretty_inspect method on Object or Kernel.
#require 'pp'
module Kernel
  def pretty_inspect
    inspect
  end
  
  def =~(o)
    nil
  end
end

