require 'rails_helper'

RSpec.describe "articles/index", type: :view do
  before(:each) do
    assign(:articles, [
      Article.create!(
        :sku => "Sku",
        :description => "Description",
        :price => "9.99",
        :amount => 1,
        :category_id => 2,
        :subcategory_id => 3
      ),
      Article.create!(
        :sku => "Sku",
        :description => "Description",
        :price => "9.99",
        :amount => 1,
        :category_id => 2,
        :subcategory_id => 3
      )
    ])
  end

  it "renders a list of articles" do
    render
    assert_select "tr>td", :text => "Sku".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
