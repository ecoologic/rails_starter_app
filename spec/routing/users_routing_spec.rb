require "rails_helper"

RSpec.describe UsersController do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/users").to route_to("users#index")
    end

    it "routes to #show" do
      expect(get: "/users/1").to route_to("users#show", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/users/1").to route_to("users#destroy", id: "1")
    end
  end
end