require 'lib_helper'

RSpec.describe Rich::String do
  describe '#contains_letter?' do
    it "is true for a string with letters" do
      expect(described_class.new('2342AAA').contains_letter?).to be true
    end

    it "is false for a string without letters" do
      expect(described_class.new('23132132131').contains_letter?).to be false
    end
  end
end
