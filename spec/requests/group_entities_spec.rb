require 'rails_helper'

RSpec.describe 'GroupEntities', type: :request do
  describe 'GET /index' do
    it 'returns http success' do
      get '/group_entities/index'
      expect(response).to have_http_status(:success)
    end
  end
end
