require 'spec_helper'

describe "warehouse_product_infos/show" do
  before(:each) do
    @warehouse_product_info = assign(:warehouse_product_info, stub_model(WarehouseProductInfo,
      :quantity => 1,
      :product => nil,
      :warehouse => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(//)
    rendered.should match(//)
  end
end
