require 'spec_helper'

describe "store_product_infos/index" do
  before(:each) do
    assign(:store_product_infos, [
      stub_model(StoreProductInfo,
        :product => Product.create({name: 'Apple',     barcode: '0000000001'}),
        :store => Store.create({name: 'Central Branch', max_capacity: 2000}),
        :price => 1.5,
        :quantity => 1
      ),
      stub_model(StoreProductInfo,
        :product => Product.create({name: 'Banana',    barcode: '0000000002'}),
        :store =>   Store.create({name: 'Western Branch', max_capacity: 800}),
        :price => 1.5,
        :quantity => 1
      )
    ])
  end

  it "renders a list of store_product_infos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
