require "spec_helper"

describe BlogcrsController do
  describe "routing" do

    it "routes to #index" do
      get("/blogcrs").should route_to("blogcrs#index")
    end

    it "routes to #new" do
      get("/blogcrs/new").should route_to("blogcrs#new")
    end

    it "routes to #show" do
      get("/blogcrs/1").should route_to("blogcrs#show", :id => "1")
    end

    it "routes to #edit" do
      get("/blogcrs/1/edit").should route_to("blogcrs#edit", :id => "1")
    end

    it "routes to #create" do
      post("/blogcrs").should route_to("blogcrs#create")
    end

    it "routes to #update" do
      put("/blogcrs/1").should route_to("blogcrs#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/blogcrs/1").should route_to("blogcrs#destroy", :id => "1")
    end

  end
end
