require 'spec_helper'

describe "inside_orders/new" do
  before(:each) do
    assign(:inside_order, stub_model(InsideOrder,
      :order_status => "MyString",
      :store => nil,
      :shelf => nil
    ).as_new_record)
  end

  it "renders new inside_order form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => inside_orders_path, :method => "post" do
      assert_select "input#inside_order_order_status", :name => "inside_order[order_status]"
      assert_select "input#inside_order_store", :name => "inside_order[store]"
      assert_select "input#inside_order_shelf", :name => "inside_order[shelf]"
    end
  end
end
