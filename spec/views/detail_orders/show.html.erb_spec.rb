require 'rails_helper'

RSpec.describe "detail_orders/show", type: :view do
  before(:each) do
    @detail_order = assign(:detail_order, DetailOrder.create!(
      :article_id => 1,
      :amount => 2,
      :order_id => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end
