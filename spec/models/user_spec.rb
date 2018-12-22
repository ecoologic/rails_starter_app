require 'rails_helper'

RSpec.describe User do
  describe '#save' do
    subject(:user) { described_class.new }

    it "doesn't save without email or password" do
      expect(user.save).to be false
      expect(user.errors.to_a).to include "Email can't be blank",
                                          "Password must contain at least 8 characters"
    end
  end

  describe '#to_s' do
    let(:email) { 'erik@pm.me' }

    it "prints your email" do
      expect(described_class.new(email: email).to_s)
        .to eq email
    end
  end
end
