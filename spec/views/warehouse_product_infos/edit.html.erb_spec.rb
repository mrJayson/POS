require 'spec_helper'

describe "warehouse_product_infos/edit" do
  before(:each) do
    @warehouse_product_info = assign(:warehouse_product_info, stub_model(WarehouseProductInfo,
      :quantity => 1,
      :product => nil,
      :warehouse => nil
    ))
  end

  it "renders the edit warehouse_product_info form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => warehouse_product_infos_path(@warehouse_product_info), :method => "post" do
      assert_select "input#warehouse_product_info_quantity", :name => "warehouse_product_info[quantity]"
      assert_select "input#warehouse_product_info_product", :name => "warehouse_product_info[product]"
      assert_select "input#warehouse_product_info_warehouse", :name => "warehouse_product_info[warehouse]"
    end
  end
end
