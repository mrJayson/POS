require 'spec_helper'

describe "store_product_infos/edit" do
  before(:each) do
    @store_product_info = assign(:store_product_info, stub_model(StoreProductInfo,
      :product => Product.create({name: 'Apple',     barcode: '0000000001'}),
      :store => Store.create({name: 'Central Branch', max_capacity: 2000}),
      :price => 1.5,
      :quantity => 1
    ))
  end


end
