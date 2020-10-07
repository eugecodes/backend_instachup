require 'rails_helper'

RSpec.describe "service_zones/index", type: :view do
  before(:each) do
    assign(:service_zones, [
      ServiceZone.create!(
        :longitude => "Longitude",
        :latitude => "Latitude"
      ),
      ServiceZone.create!(
        :longitude => "Longitude",
        :latitude => "Latitude"
      )
    ])
  end

  it "renders a list of service_zones" do
    render
    assert_select "tr>td", :text => "Longitude".to_s, :count => 2
    assert_select "tr>td", :text => "Latitude".to_s, :count => 2
  end
end
