require 'spec_helper'
include ShelvesHelper

describe "shelf_product_infos/index" do
  before(:each) do
    Shelf.create({aisle: 1, current_capacity: 1, max_capacity: 1, store_id: 1})
    session[:shelf_id] = 1
    assign(:shelf_product_infos, [
      stub_model(ShelfProductInfo,
        :product => nil,
        :quantity => 1
      ),
      stub_model(ShelfProductInfo,
        :product => nil,
        :quantity => 1
      )
    ])
  end


end
