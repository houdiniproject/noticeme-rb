# frozen_string_literal: true

# License: AGPL-3.0-or-later WITH WTO-AP-3.0-or-later
# Full license explanation at https://github.com/houdiniproject/houdini/blob/main/LICENSE
require "bundler"
require_relative "coordinates"

module Noticeme
  class LockfileSource
    attr_reader :file, :parser
    def initialize(file)
      @file = file
      @parser = Bundler::LockfileParser.new(File.read(file))
    end

    def to_coordinates
      @parser.specs.map do |spec|
        Coordinates.new("gem", "rubygems", "-", spec.name, spec.version.to_s)
      end
    end
  end
end
