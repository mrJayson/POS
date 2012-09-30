require 'spec_helper'

describe "shelves/index" do
  before(:each) do
    assign(:shelves, [
      stub_model(Shelf,
        :aisle => 1,
        :max_capacity => 2,
        :current_capacity => 3,
        :store => nil
      ),
      stub_model(Shelf,
        :aisle => 1,
        :max_capacity => 2,
        :current_capacity => 3,
        :store => nil
      )
    ])
  end

  it "renders a list of shelves" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
