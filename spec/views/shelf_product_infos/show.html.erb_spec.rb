require 'spec_helper'

describe "shelf_product_infos/show" do
  before(:each) do
    @shelf_product_info = assign(:shelf_product_info, stub_model(ShelfProductInfo,
      :benchmark => 1,
      :quantity => 2,
      :product => nil,
      :shelf => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(//)
    rendered.should match(//)
  end
end
