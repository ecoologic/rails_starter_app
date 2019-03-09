require 'lib_helper'

RSpec.describe Rich::Json do
  describe '#safe_parse' do
    it "is a hash when it's valid" do
      expect(described_class.new({ x: 1 }.to_json).safe_parse)
        .to eq('x' => 1)
    end

    it "is the default value when it can't be parsed" do
      expect(described_class.new("invalid").safe_parse(:invalid))
        .to eq(:invalid)
    end
  end
end
