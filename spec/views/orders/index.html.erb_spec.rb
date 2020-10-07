require 'rails_helper'

RSpec.describe "orders/index", type: :view do
  before(:each) do
    assign(:orders, [
      Order.create!(
        :user_id => 1,
        :address => "Address",
        :longitude => "Longitude",
        :latitude => "Latitude"
      ),
      Order.create!(
        :user_id => 1,
        :address => "Address",
        :longitude => "Longitude",
        :latitude => "Latitude"
      )
    ])
  end

  it "renders a list of orders" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "Longitude".to_s, :count => 2
    assert_select "tr>td", :text => "Latitude".to_s, :count => 2
  end
end
