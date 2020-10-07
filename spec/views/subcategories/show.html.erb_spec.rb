require 'rails_helper'

RSpec.describe "subcategories/show", type: :view do
  before(:each) do
    @subcategory = assign(:subcategory, Subcategory.create!(
      :name => "Name",
      :category_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/1/)
  end
end
