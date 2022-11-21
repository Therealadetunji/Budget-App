require 'rails_helper'

RSpec.describe Group, type: :model do
  
    user = User.create(name: 'Buff Daddy')
   group =  Group.new(author: user, name: 'Boys to men', icon: 'https://app_screenshot.png')

  describe 'checking the user.rb model' do
    
    it 'should give the name of the user' do
      group.name = 'Boys to men'
    expect(group).to be_valid
    end

    it 'should accept the png url' do
    group.icon = 'app_screenshot.png'
    expect(group).to be_valid
    end
  end
end
