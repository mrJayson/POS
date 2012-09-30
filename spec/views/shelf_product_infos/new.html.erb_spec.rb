require 'spec_helper'

describe "shelf_product_infos/new" do
  before(:each) do
    assign(:shelf_product_info, stub_model(ShelfProductInfo,
      :benchmark => 1,
      :quantity => 1,
      :product => nil,
      :shelf => nil
    ).as_new_record)
  end

  it "renders new shelf_product_info form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => shelf_product_infos_path, :method => "post" do
      assert_select "input#shelf_product_info_benchmark", :name => "shelf_product_info[benchmark]"
      assert_select "input#shelf_product_info_quantity", :name => "shelf_product_info[quantity]"
      assert_select "input#shelf_product_info_product", :name => "shelf_product_info[product]"
      assert_select "input#shelf_product_info_shelf", :name => "shelf_product_info[shelf]"
    end
  end
end
