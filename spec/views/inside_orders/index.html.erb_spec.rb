require 'spec_helper'

describe "inside_orders/index" do
  before(:each) do
    assign(:inside_orders, [
      stub_model(InsideOrder,
        :order_status => "Order Status",
        :store => nil,
        :shelf => nil
      ),
      stub_model(InsideOrder,
        :order_status => "Order Status",
        :store => nil,
        :shelf => nil
      )
    ])
  end

  it "renders a list of inside_orders" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Order Status".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
