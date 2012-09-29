require 'spec_helper'

describe "store_product_infos/show" do
  before(:each) do
    @store_product_info = assign(:store_product_info, stub_model(StoreProductInfo,
      :product => nil,
      :store => nil,
      :price => 1.5,
      :quantity => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(/1.5/)
    rendered.should match(/1/)
  end
end
