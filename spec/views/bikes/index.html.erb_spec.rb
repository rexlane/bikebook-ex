require 'rails_helper'

RSpec.describe "bikes/index", type: :view do
  before(:each) do
    assign(:bikes, [
      Bike.create!(
        :model => "Model",
        :manufacturer_id => 1
      ),
      Bike.create!(
        :model => "Model",
        :manufacturer_id => 1
      )
    ])
  end

  it "renders a list of bikes" do
    render
    assert_select "tr>td", :text => "Model".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
