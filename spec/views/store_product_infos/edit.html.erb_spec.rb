require 'spec_helper'

describe "store_product_infos/edit" do
  before(:each) do
    @store_product_info = assign(:store_product_info, stub_model(StoreProductInfo,
      :product => nil,
      :store => nil,
      :price => 1.5,
      :quantity => 1
    ))
  end

  it "renders the edit store_product_info form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => store_product_infos_path(@store_product_info), :method => "post" do
      assert_select "input#store_product_info_product", :name => "store_product_info[product]"
      assert_select "input#store_product_info_store", :name => "store_product_info[store]"
      assert_select "input#store_product_info_price", :name => "store_product_info[price]"
      assert_select "input#store_product_info_quantity", :name => "store_product_info[quantity]"
    end
  end
end
