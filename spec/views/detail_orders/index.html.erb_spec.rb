require 'rails_helper'

RSpec.describe "detail_orders/index", type: :view do
  before(:each) do
    assign(:detail_orders, [
      DetailOrder.create!(
        :article_id => 1,
        :amount => 2,
        :order_id => 3
      ),
      DetailOrder.create!(
        :article_id => 1,
        :amount => 2,
        :order_id => 3
      )
    ])
  end

  it "renders a list of detail_orders" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
