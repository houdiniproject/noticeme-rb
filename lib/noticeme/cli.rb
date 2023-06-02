# frozen_string_literal: true

# License: AGPL-3.0-or-later WITH WTO-AP-3.0-or-later
# Full license explanation at https://github.com/houdiniproject/houdini/blob/main/LICENSE

require "thor"
require_relative "lockfile_source"
require_relative "service"

module Noticeme
  class Cli < Thor
    def self.exit_on_failure?
      true
    end

    NOTICE_FILE_NAME = "NOTICE"
    # contents of the Thor class
    desc "verify", "say hello to NAME"
    def verify
      lockfile = LockfileSource.new("Gemfile.lock")
      service = Service.new
      result = service.get_notice(lockfile.to_coordinates)

      raise "#{NOTICE_FILE_NAME} must be updated" unless File.exist?(NOTICE_FILE_NAME) && result&.content == File.read(NOTICE_FILE_NAME)
    end

    desc "update", "say hello to NAME"
    def update
      lockfile = LockfileSource.new("Gemfile.lock")
      service = Service.new
      result = service.get_notice(lockfile.to_coordinates)
      File.write(NOTICE_FILE_NAME, result.content)
    end
  end
end
