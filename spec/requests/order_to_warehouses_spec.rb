require 'spec_helper'

describe "OrderToWarehouses" do
  describe "GET /order_to_warehouses" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get order_to_warehouses_path
      response.status.should be(200)
    end
  end
end
