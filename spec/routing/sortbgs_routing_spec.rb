require "spec_helper"

describe SortbgsController do
  describe "routing" do

    it "routes to #index" do
      get("/sortbgs").should route_to("sortbgs#index")
    end

    it "routes to #new" do
      get("/sortbgs/new").should route_to("sortbgs#new")
    end

    it "routes to #show" do
      get("/sortbgs/1").should route_to("sortbgs#show", :id => "1")
    end

    it "routes to #edit" do
      get("/sortbgs/1/edit").should route_to("sortbgs#edit", :id => "1")
    end

    it "routes to #create" do
      post("/sortbgs").should route_to("sortbgs#create")
    end

    it "routes to #update" do
      put("/sortbgs/1").should route_to("sortbgs#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/sortbgs/1").should route_to("sortbgs#destroy", :id => "1")
    end

  end
end
