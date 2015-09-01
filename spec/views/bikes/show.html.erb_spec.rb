require 'rails_helper'

RSpec.describe "bikes/show", type: :view do
  before(:each) do
    @bike = assign(:bike, Bike.create!(
      :model => "Model",
      :manufacturer_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Model/)
    expect(rendered).to match(/1/)
  end
end
