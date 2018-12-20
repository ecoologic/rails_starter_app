require 'rails_helper'

RSpec.describe Time do
  describe '#to_s' do
    it "has the format dd/mm/yyyy" do
      expect(described_class.now.to_s).to match %r{\A\d\d/\d\d/\d{4} \d\d:\d\d\z}
    end
  end

  describe '#zone' do
    it "is in the Brisbane time zone" do
      expect(described_class.now.zone).to eq 'AEST'
      expect(described_class.zone.name).to eq 'Brisbane'
    end
  end
end
