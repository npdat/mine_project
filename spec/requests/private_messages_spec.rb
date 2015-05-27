require 'rails_helper'

RSpec.describe "PrivateMessages", type: :request do
  describe "GET /private_messages" do
    it "works! (now write some real specs)" do
      get private_messages_path
      expect(response).to have_http_status(200)
    end
  end
end
