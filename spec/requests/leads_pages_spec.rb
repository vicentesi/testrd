require 'rails_helper'

RSpec.describe "LeadsPages", type: :request do
  describe "GET /leads_pages" do
    it "works! (now write some real specs)" do
      get leads_new_path
      expect(response).to have_http_status(200)
    end
  end
end
