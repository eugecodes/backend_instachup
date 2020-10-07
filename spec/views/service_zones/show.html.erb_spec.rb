require 'rails_helper'

RSpec.describe "service_zones/show", type: :view do
  before(:each) do
    @service_zone = assign(:service_zone, ServiceZone.create!(
      :longitude => "Longitude",
      :latitude => "Latitude"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Longitude/)
    expect(rendered).to match(/Latitude/)
  end
end
