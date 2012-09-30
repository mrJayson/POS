require 'spec_helper'

describe "warehouse_product_infos/index" do
  before(:each) do
    assign(:warehouse_product_infos, [
      stub_model(WarehouseProductInfo,
        :quantity => 1,
        :product => nil,
        :warehouse => nil
      ),
      stub_model(WarehouseProductInfo,
        :quantity => 1,
        :product => nil,
        :warehouse => nil
      )
    ])
  end

  it "renders a list of warehouse_product_infos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
