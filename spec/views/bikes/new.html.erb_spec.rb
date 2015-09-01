require 'rails_helper'

RSpec.describe "bikes/new", type: :view do
  before(:each) do
    assign(:bike, Bike.new(
      :model => "MyString",
      :manufacturer_id => 1
    ))
  end

  it "renders new bike form" do
    render

    assert_select "form[action=?][method=?]", bikes_path, "post" do

      assert_select "input#bike_model[name=?]", "bike[model]"

      assert_select "input#bike_manufacturer_id[name=?]", "bike[manufacturer_id]"
    end
  end
end
