require 'rails_helper'

RSpec.describe "subcategories/index", type: :view do
  before(:each) do
    assign(:subcategories, [
      Subcategory.create!(
        :name => "Name",
        :category_id => 1
      ),
      Subcategory.create!(
        :name => "Name",
        :category_id => 1
      )
    ])
  end

  it "renders a list of subcategories" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
