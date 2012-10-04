require 'spec_helper'

describe "warehouse_product_infos/new" do
  before(:each) do
    assign(:warehouse_product_info, stub_model(WarehouseProductInfo,
      :quantity => 1,
      :product => nil,
      :warehouse => nil
    ).as_new_record)
  end


end
