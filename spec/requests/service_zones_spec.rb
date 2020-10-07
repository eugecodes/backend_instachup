require 'rails_helper'

RSpec.describe "ServiceZones", type: :request do
  describe "GET /service_zones" do
    it "works! (now write some real specs)" do
      get service_zones_path
      expect(response).to have_http_status(200)
    end
  end
end
