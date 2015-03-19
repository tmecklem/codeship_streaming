require 'rails_helper'

RSpec.describe StreamingController, type: :controller do

  describe "POST #stream" do
    it "returns http success" do
      post :stream, file: fixture_file_upload('upload.csv'), format: :csv
      expect(response).to have_http_status(:success)
      expect(CSV.parse(response.body).size).to eq 100
    end
  end

end
