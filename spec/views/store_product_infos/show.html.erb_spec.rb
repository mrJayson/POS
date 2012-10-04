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



end
