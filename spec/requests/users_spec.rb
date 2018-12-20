require 'rails_helper'

RSpec.describe "Users", type: :request do
  describe "GET /users" do
    it "is not availble to not-logged in people" do
      get users_path
      expect(response).to have_http_status(302)
      expect(flash.alert).to eq I18n.t!('devise.failure.unauthenticated')
    end
  end
end
