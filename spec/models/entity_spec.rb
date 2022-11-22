require 'rails_helper'

RSpec.describe Entity, type: :model do
  user = User.create(name: 'Buff Daddy')
 entity = Entity.new(author: user, name: 'something', amount: 2.5)

  describe 'checking the user.rb model' do
    it 'should give the name of the user' do
      entity.name = 'something'
    expect(entity).to be_valid
    end

    it 'should accept the png url' do
      entity.amount = 2.5
      expect(entity).to be_valid
    end
  end
end
