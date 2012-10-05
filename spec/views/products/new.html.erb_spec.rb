require 'spec_helper'

describe "products/new" do
  before(:each) do
    assign(:product, stub_model(Product,
      :name => "MyString",
      :barcode => "MyString"
    ).as_new_record)
  end


end
