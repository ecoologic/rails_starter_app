require 'rails_helper'

RSpec.describe Logging do
  class Example
    extend Logging

    def self.log_something
      log
    end
  end

  describe '#log' do
    it "logs to Rails" do
      allow(Rails.logger).to receive(:info)

      Example.log_something

      expect(Rails.logger).to have_received(:info).with('Example:log_something: Started')
    end
  end
end
