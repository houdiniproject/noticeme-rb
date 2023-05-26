# frozen_string_literal: true

# License: AGPL-3.0-or-later WITH WTO-AP-3.0-or-later
# Full license explanation at https://github.com/houdiniproject/houdini/blob/main/LICENSE

require "thor"
require_relative "lockfile_source"
require_relative "service"

module Noticeme
  class Cli < Thor
    # contents of the Thor class
    desc "verify", "say hello to NAME"
    def verify
      lockfile = LockfileSource.new("Gemfile.lock")
      service = Service.new
      puts service.get_notice(lockfile.to_coordinates)
    end
  end
end
