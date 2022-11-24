require 'rails_helper'

RSpec.describe 'Groups', type: :request do

  before do
    @new_user = User.new(name: 'testing', email: 'testing@test.com', password: 1_234_567,
                         password_confirmation: 1_234_567)
    @new_user.save
    @new_group = Group.new(name: 'Grocery', icon: 'https://grocery.com/grocery.jpg')
    @new_group.save
  end

  describe 'GET /index' do
    it 'returns http success' do
      get '/groups'
      expect(response).to have_http_status(:success)
    end
  end
end
