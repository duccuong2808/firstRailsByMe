require "spec_helper"

describe CatebgsController do
  describe "routing" do

    it "routes to #index" do
      get("/catebgs").should route_to("catebgs#index")
    end

    it "routes to #new" do
      get("/catebgs/new").should route_to("catebgs#new")
    end

    it "routes to #show" do
      get("/catebgs/1").should route_to("catebgs#show", :id => "1")
    end

    it "routes to #edit" do
      get("/catebgs/1/edit").should route_to("catebgs#edit", :id => "1")
    end

    it "routes to #create" do
      post("/catebgs").should route_to("catebgs#create")
    end

    it "routes to #update" do
      put("/catebgs/1").should route_to("catebgs#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/catebgs/1").should route_to("catebgs#destroy", :id => "1")
    end

  end
end
