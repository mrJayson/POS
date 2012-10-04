require 'spec_helper'

describe "shelf_product_infos/show" do
  before(:each) do
    @shelf_product_info = assign(:shelf_product_info, stub_model(ShelfProductInfo,
      :product => nil,
      :quantity => 1
    ))
  end


end
