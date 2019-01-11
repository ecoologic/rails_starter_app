require 'rails_helper'

RSpec.describe "Pages", type: :request do
  describe "GET /pages" do
    it "requires authentication" do
      get pages_path

      expect(response).to have_http_status(302)
      expect(response.location).to eq new_user_session_url
    end
  end
end
