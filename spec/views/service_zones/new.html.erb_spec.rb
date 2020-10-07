require 'rails_helper'

RSpec.describe "service_zones/new", type: :view do
  before(:each) do
    assign(:service_zone, ServiceZone.new(
      :longitude => "MyString",
      :latitude => "MyString"
    ))
  end

  it "renders new service_zone form" do
    render

    assert_select "form[action=?][method=?]", service_zones_path, "post" do

      assert_select "input#service_zone_longitude[name=?]", "service_zone[longitude]"

      assert_select "input#service_zone_latitude[name=?]", "service_zone[latitude]"
    end
  end
end
