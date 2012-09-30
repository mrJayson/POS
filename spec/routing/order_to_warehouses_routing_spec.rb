require "spec_helper"

describe OrderToWarehousesController do
  describe "routing" do

    it "routes to #index" do
      get("/order_to_warehouses").should route_to("order_to_warehouses#index")
    end

    it "routes to #new" do
      get("/order_to_warehouses/new").should route_to("order_to_warehouses#new")
    end

    it "routes to #show" do
      get("/order_to_warehouses/1").should route_to("order_to_warehouses#show", :id => "1")
    end

    it "routes to #edit" do
      get("/order_to_warehouses/1/edit").should route_to("order_to_warehouses#edit", :id => "1")
    end

    it "routes to #create" do
      post("/order_to_warehouses").should route_to("order_to_warehouses#create")
    end

    it "routes to #update" do
      put("/order_to_warehouses/1").should route_to("order_to_warehouses#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/order_to_warehouses/1").should route_to("order_to_warehouses#destroy", :id => "1")
    end

  end
end
