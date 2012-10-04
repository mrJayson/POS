require 'spec_helper'

describe "shelf_product_infos/new" do
  before(:each) do
    assign(:shelf_product_info, stub_model(ShelfProductInfo,
      :product => nil,
      :quantity => 1
    ).as_new_record)
  end


end
