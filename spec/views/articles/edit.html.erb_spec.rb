require 'rails_helper'

RSpec.describe "articles/edit", type: :view do
  before(:each) do
    @article = assign(:article, Article.create!(
      :sku => "MyString",
      :description => "MyString",
      :price => "9.99",
      :amount => 1,
      :category_id => 1,
      :subcategory_id => 1
    ))
  end

  it "renders the edit article form" do
    render

    assert_select "form[action=?][method=?]", article_path(@article), "post" do

      assert_select "input#article_sku[name=?]", "article[sku]"

      assert_select "input#article_description[name=?]", "article[description]"

      assert_select "input#article_price[name=?]", "article[price]"

      assert_select "input#article_amount[name=?]", "article[amount]"

      assert_select "input#article_category_id[name=?]", "article[category_id]"

      assert_select "input#article_subcategory_id[name=?]", "article[subcategory_id]"
    end
  end
end
