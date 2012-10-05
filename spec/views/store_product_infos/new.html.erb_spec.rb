require 'spec_helper'

describe "store_product_infos/new" do
  before(:each) do
    assign(:store_product_info, stub_model(StoreProductInfo,
      :product => nil,
      :store => nil,
      :price => 1.5,
      :quantity => 1
    ).as_new_record)
  end


end
