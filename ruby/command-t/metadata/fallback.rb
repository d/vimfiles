# Copyright 2015 Greg Hurrell. All rights reserved.
# Licensed under the terms of the BSD 2-clause license.

module CommandT
  module Metadata
    # This file gets overwritten with actual data during the installation
    # process (when `ruby extconf.rb` is run).
    EXPECTED_RUBY_VERSION = '[unknown]'
    EXPECTED_RUBY_PATCHLEVEL = '[unknown]'
    UNKNOWN = true
  end # module Metadata
end # module CommandT
