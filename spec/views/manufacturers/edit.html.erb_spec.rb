require 'rails_helper'

RSpec.describe "manufacturers/edit", type: :view do
  before(:each) do
    @manufacturer = assign(:manufacturer, Manufacturer.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit manufacturer form" do
    render

    assert_select "form[action=?][method=?]", manufacturer_path(@manufacturer), "post" do

      assert_select "input#manufacturer_name[name=?]", "manufacturer[name]"
    end
  end
end
