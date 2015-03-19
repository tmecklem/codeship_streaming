require 'rails_helper'

RSpec.describe StreamingController, type: :controller do

  describe "GET #stream" do
    it "returns http success" do
      get :stream, format: :csv
      expect(response).to have_http_status(:success)
      expect(CSV.parse(response.body).size).to eq 100
    end
  end

end
