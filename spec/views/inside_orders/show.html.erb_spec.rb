require 'spec_helper'

describe "inside_orders/show" do
  before(:each) do
    @inside_order = assign(:inside_order, stub_model(InsideOrder,
      :order_status => "Order Status",
      :store => nil,
      :shelf => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Order Status/)
    rendered.should match(//)
    rendered.should match(//)
  end
end
