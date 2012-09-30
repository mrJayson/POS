require 'spec_helper'

describe "shelves/index" do
  before(:each) do
    assign(:shelves, [
      stub_model(Shelf,
        :max_capacity => 1,
        :current_capacity => 2,
        :store => nil
      ),
      stub_model(Shelf,
        :max_capacity => 1,
        :current_capacity => 2,
        :store => nil
      )
    ])
  end

  it "renders a list of shelves" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
