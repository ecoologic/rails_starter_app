require 'rails_helper'

RSpec.describe UsersController do
  let(:valid_attributes) { { email: 'erik@pm.me', password: 'password' } }
  let(:invalid_attributes) { { email: 'me', password: 'short' } }
  let(:valid_session) { {} }
  let(:user) { User.create!(valid_attributes) }

  describe "GET #index" do
    it "returns a success response" do
      log_in user

      get :index, params: {}, session: valid_session

      expect(response).to be_successful
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      log_in user

      get :show, params: { id: user.to_param }, session: valid_session
      expect(response).to be_successful
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested user" do
      log_in user

      expect do
        delete :destroy, params: { id: user.to_param }, session: valid_session
      end.to change(User, :count).by(-1)
    end

    it "redirects to the users list" do
      log_in user

      delete :destroy, params: { id: user.to_param }, session: valid_session
      expect(response).to redirect_to(users_url)
    end
  end
end
