require 'spec_helper'

describe "warehouse_product_infos/new" do
  before(:each) do
    assign(:warehouse_product_info, stub_model(WarehouseProductInfo,
      :quantity => 1,
      :product => nil,
      :warehouse => nil
    ).as_new_record)
  end

  it "renders new warehouse_product_info form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => warehouse_product_infos_path, :method => "post" do
      assert_select "input#warehouse_product_info_quantity", :name => "warehouse_product_info[quantity]"
      assert_select "input#warehouse_product_info_product", :name => "warehouse_product_info[product]"
      assert_select "input#warehouse_product_info_warehouse", :name => "warehouse_product_info[warehouse]"
    end
  end
end
