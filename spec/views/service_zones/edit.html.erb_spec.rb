require 'rails_helper'

RSpec.describe "service_zones/edit", type: :view do
  before(:each) do
    @service_zone = assign(:service_zone, ServiceZone.create!(
      :longitude => "MyString",
      :latitude => "MyString"
    ))
  end

  it "renders the edit service_zone form" do
    render

    assert_select "form[action=?][method=?]", service_zone_path(@service_zone), "post" do

      assert_select "input#service_zone_longitude[name=?]", "service_zone[longitude]"

      assert_select "input#service_zone_latitude[name=?]", "service_zone[latitude]"
    end
  end
end
