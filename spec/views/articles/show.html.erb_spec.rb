require 'rails_helper'

RSpec.describe "articles/show", type: :view do
  before(:each) do
    @article = assign(:article, Article.create!(
      :sku => "Sku",
      :description => "Description",
      :price => "9.99",
      :amount => 1,
      :category_id => 2,
      :subcategory_id => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Sku/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end
