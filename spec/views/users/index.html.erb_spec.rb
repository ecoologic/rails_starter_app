require 'rails_helper'

RSpec.describe "users/index", type: :view do
  before do
    assign(:users, [
             User.create!(email: 'me1@pm.me', password: 'password'),
             User.create!(email: 'me2@pm.me', password: 'password')
           ])
  end

  it "renders a list of users" do
    render
  end
end
