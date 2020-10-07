require 'rails_helper'

RSpec.describe "orders/show", type: :view do
  before(:each) do
    @order = assign(:order, Order.create!(
      :user_id => 1,
      :address => "Address",
      :longitude => "Longitude",
      :latitude => "Latitude"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/Longitude/)
    expect(rendered).to match(/Latitude/)
  end
end
