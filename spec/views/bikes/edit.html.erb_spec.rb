require 'rails_helper'

RSpec.describe "bikes/edit", type: :view do
  before(:each) do
    @bike = assign(:bike, Bike.create!(
      :model => "MyString",
      :manufacturer_id => 1
    ))
  end

  it "renders the edit bike form" do
    render

    assert_select "form[action=?][method=?]", bike_path(@bike), "post" do

      assert_select "input#bike_model[name=?]", "bike[model]"

      assert_select "input#bike_manufacturer_id[name=?]", "bike[manufacturer_id]"
    end
  end
end
