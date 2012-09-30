require 'spec_helper'

describe "shelves/show" do
  before(:each) do
    @shelf = assign(:shelf, stub_model(Shelf,
      :aisle => 1,
      :max_capacity => 2,
      :current_capacity => 3,
      :store => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(//)
  end
end
