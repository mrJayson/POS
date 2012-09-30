require "spec_helper"

describe InsideOrdersController do
  describe "routing" do

    it "routes to #index" do
      get("/inside_orders").should route_to("inside_orders#index")
    end

    it "routes to #new" do
      get("/inside_orders/new").should route_to("inside_orders#new")
    end

    it "routes to #show" do
      get("/inside_orders/1").should route_to("inside_orders#show", :id => "1")
    end

    it "routes to #edit" do
      get("/inside_orders/1/edit").should route_to("inside_orders#edit", :id => "1")
    end

    it "routes to #create" do
      post("/inside_orders").should route_to("inside_orders#create")
    end

    it "routes to #update" do
      put("/inside_orders/1").should route_to("inside_orders#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/inside_orders/1").should route_to("inside_orders#destroy", :id => "1")
    end

  end
end
