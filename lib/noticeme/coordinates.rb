# frozen_string_literal: true

# License: AGPL-3.0-or-later WITH WTO-AP-3.0-or-later
# Full license explanation at https://github.com/houdiniproject/houdini/blob/main/LICENSE

module Noticeme
  class Coordinates
    attr_reader :args
    def initialize(*args)
      @args = args
    end

    def to_s
      args.join("/")
    end
  end
end
