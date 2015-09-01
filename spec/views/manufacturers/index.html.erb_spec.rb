require 'rails_helper'

RSpec.describe "manufacturers/index", type: :view do
  before(:each) do
    assign(:manufacturers, [
      Manufacturer.create!(
        :name => "Name"
      ),
      Manufacturer.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of manufacturers" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
