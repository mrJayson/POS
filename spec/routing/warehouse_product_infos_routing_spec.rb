require "spec_helper"

describe WarehouseProductInfosController do
  describe "routing" do

    it "routes to #index" do
      get("/warehouse_product_infos").should route_to("warehouse_product_infos#index")
    end

    it "routes to #new" do
      get("/warehouse_product_infos/new").should route_to("warehouse_product_infos#new")
    end

    it "routes to #show" do
      get("/warehouse_product_infos/1").should route_to("warehouse_product_infos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/warehouse_product_infos/1/edit").should route_to("warehouse_product_infos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/warehouse_product_infos").should route_to("warehouse_product_infos#create")
    end

    it "routes to #update" do
      put("/warehouse_product_infos/1").should route_to("warehouse_product_infos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/warehouse_product_infos/1").should route_to("warehouse_product_infos#destroy", :id => "1")
    end

  end
end
