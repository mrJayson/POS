require 'spec_helper'

describe "warehouses/index" do
  before(:each) do
    assign(:warehouses, [
      stub_model(Warehouse,
        :max_capacity => 1,
        :current_capacity => 2
      ),
      stub_model(Warehouse,
        :max_capacity => 1,
        :current_capacity => 2
      )
    ])
  end

  it "renders a list of warehouses" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
