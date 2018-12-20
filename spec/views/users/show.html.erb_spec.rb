require 'rails_helper'

RSpec.describe "users/show" do
  before do
    @user = assign(:user, User.create!(email: 'me@pm.me', password: 'password'))
  end

  it "renders attributes in <p>" do
    render
  end
end
