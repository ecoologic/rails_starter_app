require 'rails_helper'

RSpec.describe "Users", type: :request do
  describe "GET /users" do
    it "is not availble to not-logged in people" do
      get users_path

      expect(response).to have_http_status(302)
      expect(flash.alert).to eq I18n.t!('devise.failure.unauthenticated')
    end
  end

  describe "GET /users/:id" do
    let(:current_user) { create(:user) }

    before { sign_in current_user }

    it "can show the current user" do
      get user_path(current_user.id)

      expect(response).to have_http_status 200
    end
  end
end
