require 'spec_helper'

describe "shelf_product_infos/new" do
  before(:each) do
    assign(:shelf_product_info, stub_model(ShelfProductInfo,
      :product => nil,
      :quantity => 1
    ).as_new_record)
  end

  it "renders new shelf_product_info form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => shelf_product_infos_path, :method => "post" do
      assert_select "input#shelf_product_info_product", :name => "shelf_product_info[product]"
      assert_select "input#shelf_product_info_quantity", :name => "shelf_product_info[quantity]"
    end
  end
end
