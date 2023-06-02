# frozen_string_literal: true

# License: AGPL-3.0-or-later WITH WTO-AP-3.0-or-later
# Full license explanation at https://github.com/houdiniproject/houdini/blob/main/LICENSE

RSpec.describe Noticeme::Coordinates do
  describe "#initialize" do
    it "accepts array of 1" do
      expect(Noticeme::Coordinates.new("gems/ruby/1").to_s).to eq "gems/ruby/1"
    end

    it "accepts array of multiple items" do
      expect(Noticeme::Coordinates.new("gems", "ruby", "1").to_s).to eq "gems/ruby/1"
    end
  end
end
