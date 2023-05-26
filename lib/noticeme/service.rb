# frozen_string_literal: true

# License: AGPL-3.0-or-later WITH WTO-AP-3.0-or-later
# Full license explanation at https://github.com/houdiniproject/houdini/blob/main/LICENSE
require "httparty"
require "ostruct"

module Noticeme
  class Service
    attr_reader :url
    def initialize(url: "https://api.clearlydefined.io/notices")
      @url = url
    end

    def get_notice(coordinates)
      coordinates = coordinates.map(&:to_s).uniq
      options = {
        headers: {
          "Content-Type" => "application/json",
          "Accept" => "application/json"
        },
        timeout: 120
      }
      result = HTTParty.post(url, options.merge(body: JSON.generate({coordinates: coordinates})))

      JSON.parse(result.body, {object_class: OpenStruct})
    end
  end
end
