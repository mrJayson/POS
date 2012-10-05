require 'spec_helper'

describe "shelf_product_infos/edit" do
  before(:each) do
    @shelf_product_info = assign(:shelf_product_info, stub_model(ShelfProductInfo,
      :product => Product.create({name: 'name', barcode: 'barcode'}),
      :quantity => 1
    ))
  end


end
