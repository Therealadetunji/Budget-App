require 'rails_helper'

RSpec.describe 'Entities', type: :request do
  describe 'GET /index' do
    it 'returns http success' do
      get '/groups/:group_id/entities'
      expect(response).to have_http_status(302)
    end
  end
end
