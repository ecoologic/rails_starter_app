require 'rails_helper'

RSpec.describe AvatarHelper do
  describe '#gravatar_url' do
    it "returns an https URL to the gravatar image" do
      expect(helper.gravatar_url('erik@pm.me', 128))
        .to eq 'https://gravatar.com/avatar/2caa5cfcd25eb9cf3371e5dc6adc8ec9.png?s=128'
    end
  end

  describe '#avatar_for' do
    let(:user) { User.new(email: 'erik@pm.me') }

    it "returns a gravatar link with an image" do
      expect(helper.avatar_for(user))
        .to include(user.email)
        .and include('<img ')
        .and include(' src="https://gravatar.com/avatar/')
        .and include('.png?s=32')
    end

    it "accepts an image size type" do
      expect(helper.avatar_for(user, :big))
        .to include(user.email)
        .and include('<img ')
        .and include(' src="https://gravatar.com/avatar/')
        .and include('.png?s=64')
    end
  end
end
