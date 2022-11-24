require 'rails_helper'

RSpec.describe User, type: :model do
  user = User.new(
    name: 'Buff Daddy', email: "buff@gmail.com", password: 551133
  )
  

  describe 'checking the user.rb model' do
    it 'should give the name of the user' do
      user.name = 'Buff Daddy'
      expect(user).to be_valid
    end
  end
end
