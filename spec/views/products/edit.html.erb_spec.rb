require 'spec_helper'

describe "products/edit" do
  before(:each) do
    @product = assign(:product, stub_model(Product,
      :name => "MyString",
      :barcode => "MyString"
    ))
  end


end
