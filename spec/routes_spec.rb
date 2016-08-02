require 'rails_helper'

RSpec.describe "routes for application", :type => :routing do
  describe "users routes" do
    it "routes /new to the user registration form" do
      expect(get("/users/new")).to route_to("users#new")
    end

    it "submits the user registration form" do
      expect(post("/users")).to route_to("users#create")
    end
  end

  describe "session routes" do
    it "submits the login form" do
      expect(post("/session")).to route_to("sessions#create")
    end

    it "routes /new to the login form" do
      expect(get("/session/new")).to route_to("sessions#new")
    end

    it "logs out user by deleting session" do
      expect(delete("/session")).to route_to("sessions#destroy")
    end
  end
end
