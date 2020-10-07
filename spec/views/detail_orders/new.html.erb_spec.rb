require 'rails_helper'

RSpec.describe "detail_orders/new", type: :view do
  before(:each) do
    assign(:detail_order, DetailOrder.new(
      :article_id => 1,
      :amount => 1,
      :order_id => 1
    ))
  end

  it "renders new detail_order form" do
    render

    assert_select "form[action=?][method=?]", detail_orders_path, "post" do

      assert_select "input#detail_order_article_id[name=?]", "detail_order[article_id]"

      assert_select "input#detail_order_amount[name=?]", "detail_order[amount]"

      assert_select "input#detail_order_order_id[name=?]", "detail_order[order_id]"
    end
  end
end
