require 'spec_helper'

describe "shelf_product_infos/edit" do
  before(:each) do
    @shelf_product_info = assign(:shelf_product_info, stub_model(ShelfProductInfo,
      :product => Product.create({name: 'name', barcode: 'barcode'}),
      :quantity => 1
    ))
  end

  it "renders the edit shelf_product_info form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => shelf_product_infos_path(@shelf_product_info), :method => "post" do
      assert_select "input#shelf_product_info_product", :name => "shelf_product_info[product]"
      assert_select "input#shelf_product_info_quantity", :name => "shelf_product_info[quantity]"
    end
  end
end
