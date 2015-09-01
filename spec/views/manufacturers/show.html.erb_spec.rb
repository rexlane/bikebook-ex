require 'rails_helper'

RSpec.describe "manufacturers/show", type: :view do
  before(:each) do
    @manufacturer = assign(:manufacturer, Manufacturer.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
