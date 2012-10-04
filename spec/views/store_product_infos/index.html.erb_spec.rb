require 'spec_helper'

describe "store_product_infos/index" do
  before(:each) do
    Store.create({name: 'Central Branch', max_capacity: 2000})
    session[:store_id] = 1
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


end
