require 'rails_helper'

RSpec.describe "articles/new", type: :view do
  before(:each) do
    assign(:article, Article.new(
      :sku => "MyString",
      :description => "MyString",
      :price => "9.99",
      :amount => 1,
      :category_id => 1,
      :subcategory_id => 1
    ))
  end

  it "renders new article form" do
    render

    assert_select "form[action=?][method=?]", articles_path, "post" do

      assert_select "input#article_sku[name=?]", "article[sku]"

      assert_select "input#article_description[name=?]", "article[description]"

      assert_select "input#article_price[name=?]", "article[price]"

      assert_select "input#article_amount[name=?]", "article[amount]"

      assert_select "input#article_category_id[name=?]", "article[category_id]"

      assert_select "input#article_subcategory_id[name=?]", "article[subcategory_id]"
    end
  end
end
